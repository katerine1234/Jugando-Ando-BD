<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>

<%
    String usuario = request.getParameter("usuario");
    String contrasena = request.getParameter("contrasena");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "");

        String query = "SELECT * FROM registrate WHERE usuario = ? AND contrasena = ?";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, usuario);
        pstmt.setString(2, contrasena);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Inicio de sesión exitoso, redirigir a la página de usuarios
            response.sendRedirect("ingresar.jsp");
        } else {
            // Credenciales inválidas, redirigir a la página de inicio de sesión con un mensaje de error
            response.sendRedirect("index.jsp?error=true");
        }
    } catch (Exception e) {
        e.printStackTrace();
        // Manejar errores y redirigir a una página de error si es necesario
        response.sendRedirect("error.jsp");
    } finally {
        // Cerrar recursos
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
