<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%
    Connection conexion = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String errorMensaje = null;

    try {
        // Cargar el driver MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establecer la conexión con la base de datos
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/prueba?useUnicode=true&characterEncoding=UTF-8", "root", "");

        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        String verificarContrasena = request.getParameter("verificarContrasena");

        if (nombres != null && apellidos != null && !nombres.isEmpty() && !apellidos.isEmpty() && contrasena.equals(verificarContrasena)) {
            // Aquí debes encriptar la contraseña antes de guardarla, pero como esto es un esbozo, omitiré esa parte.
            String sql = "INSERT INTO registrate (nombres, apellidos, correo, telefono, usuario, contrasena) VALUES (?, ?, ?, ?, ?, ?)";
            ps = conexion.prepareStatement(sql);
            ps.setString(1, nombres);
            ps.setString(2, apellidos);
            ps.setString(3, correo);
            long cantidadLong = Long.parseLong(telefono);
            ps.setLong(4, cantidadLong);
            ps.setString(5, usuario);
            ps.setString(6, contrasena);
            ps.executeUpdate();
            ps.close();
        }

        String sqlSelect = "SELECT nombres, apellidos, correo, telefono, usuario FROM registrate"; // Quitar contrasena de la selección
        ps = conexion.prepareStatement(sqlSelect);
        rs = ps.executeQuery();

        // Mostrar los resultados en el navegador
        while (rs.next()) {
            response.sendRedirect("registroExitoso.jsp");
            return;
        }
    } catch (Exception e) {
        out.println("Ocurrió un error: " + e.getMessage());
        e.printStackTrace();
    } finally {
        // Cerrar recursos en un bloque finally para evitar fugas de recursos
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conexion != null) {
                conexion.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
