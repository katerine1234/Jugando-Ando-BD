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
    boolean isInserted = false;
    String errorMensaje = null;

    try {
        // Cargar el driver MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establecer la conexión con la base de datos
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/prueba?useUnicode=true&characterEncoding=UTF-8", "root", "");

        String descripcion = request.getParameter("descripcion");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String cantidad = request.getParameter("cantidad");
        String roles = request.getParameter("role");
        String comentarios = request.getParameter("comentarios");

        if (descripcion != null && fechaNacimiento != null && !descripcion.isEmpty() && !fechaNacimiento.isEmpty()) {
            if (cantidad == null || cantidad.trim().isEmpty()) {
                errorMensaje = "La cantidad no puede estar vacía.";
            } else {
                String sql = "INSERT INTO persona (nombre, nacimiento, cantidades, fundaciones, comentarios) VALUES (?, ?, ?, ?, ?)";
                ps = conexion.prepareStatement(sql);
                ps.setString(1, descripcion);
                ps.setDate(2, java.sql.Date.valueOf(fechaNacimiento));
                int cantidadInt = Integer.parseInt(cantidad);
                ps.setInt(3, cantidadInt);
                ps.setString(4, roles);
                ps.setString(5, comentarios);
                int rowsInserted = ps.executeUpdate();
                if(rowsInserted > 0) {
                    isInserted = true;
                }
                ps.close();
            }
        }

        if(isInserted){
            response.sendRedirect("donacionExitosa.jsp");
            return; 
        }

    } catch (NumberFormatException nfe) {
        errorMensaje = "El valor de cantidad no es un número válido.";
    } catch (Exception e) {
        errorMensaje = "Ocurrió un error al procesar la solicitud.";
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conexion != null) conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    if (errorMensaje != null) {
        out.println("<p style='color: red;'>" + errorMensaje + "</p>");
    }
%>
