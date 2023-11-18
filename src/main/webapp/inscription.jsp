<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ page import="org.eclipse.dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.eclipse.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="LeServlet?flag=ajouterUser" method="post">
		<fieldset>
			<legend>Ajouter un Utilisateur</legend>
			Prénom : <input type="text" name="prenom">
			Nom : <input type="text" name="nom">
			Numéro de rue : <input type="text" name="numRue">
			Nom de la Rue : <input type="text" name="nomRue">
			Code Postal : <input type="text" name="cp">
			Ville : <input type="text" name="ville">
			Téléphone : <input type="text" name="tel">
			<input type="submit" value="Envoyer">
		</fieldset>
	</form>
	<br>
	<form method="POST" action="LeServlet?flag=deleteUser">
	    <fieldset>
	        <legend>Supprimer un Utilisateur</legend>
	        <div>
	            <label for="deleteUser">Utilisateur</label>
	            <select id="deleteUser" name="deleteUser">
	                <%
	                    HibernateDAO dao = new HibernateDAO();
	                    List<Users> users = dao.getAllUsers();
	
	                    for (Users user : users) {
	                %>
	                <option value="<%= user.getIdUsers() %>"><%= user.getNom() %> <%= user.getPrenom() %></option>
	                <%
	                    }
	                %>
	            </select>
	        </div>
	        <br>
	        <input type="submit" value="Delete">
	    </fieldset>
	</form>
</body>
</html>