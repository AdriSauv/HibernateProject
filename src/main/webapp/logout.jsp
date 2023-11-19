<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    session = request.getSession(false);
    
    if (session != null) {
        session.invalidate();
    }
    
    response.sendRedirect("accueil.jsp");
%>