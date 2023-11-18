<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ page import="org.eclipse.dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.eclipse.model.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.min(2).css"/>
	<title>Gérer les Utilisateurs</title>
	<style>
		main {padding: 2rem;}
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">${login}</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarColor02">
		      <ul class="navbar-nav me-auto">
		        <li class="nav-item">
		          <a class="nav-link active" href="#">Home
		            <span class="visually-hidden">(current)</span>
		          </a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">Mon Compte</a>
		        </li>
		      </ul>
		       <button class="btn btn-secondary my-2 my-sm-0" type="submit">Déconnexion</button>
		    </div>
		  </div>
		</nav>
	</header>
	<main>
		<form action="LeServlet?flag=ajouterUser" method="post">
		    <fieldset>
		        <legend>Ajouter un Utilisateur</legend>
		        <div class="mb-3">
		            <label for="prenom" class="form-label">Prénom :</label>
		            <input type="text" class="form-control" name="prenom" id="prenom">
		        </div>
		        <div class="mb-3">
		            <label for="nom" class="form-label">Nom :</label>
		            <input type="text" class="form-control" name="nom" id="nom">
		        </div>
		        <div class="mb-3">
		            <label for=""numRue"" class="form-label">Numéro de rue :</label>
		            <input type="text" class="form-control" name="numRue" id=""numRue"">
		        </div>
		        <div class="mb-3">
		            <label for="nomRue" class="form-label">Nom de rue :</label>
		            <input type="text" class="form-control" name="nomRue" id="nomRue">
		        </div>
		        <div class="mb-3">
		            <label for="cp" class="form-label">Code postal :</label>
		            <input type="text" class="form-control" name="cp" id="cp">
		        </div>
		        <div class="mb-3">
		            <label for="ville" class="form-label">Ville :</label>
		            <input type="text" class="form-control" name="ville" id="ville">
		        </div>
		        <div class="mb-3">
		            <label for="tel" class="form-label">Téléphone :</label>
		            <input type="text" class="form-control" name="tel" id="tel">
		        </div>
		        <button type="submit" class="btn btn-outline-success">Envoyer</button>
		    </fieldset>
		</form>
		<br>
		<form action="LeServlet?flag=deleteUser" method="post">
		    <fieldset>
		        <legend>Supprimer un Utilisateur</legend>
		        <div>
		            <label for="deleteUser" class="form-label">Utilisateur</label>
		            <select class="form-select" id="deleteUser" name="deleteUser">
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
		        <input type="submit" class="btn btn-outline-danger" value="Delete">
		    </fieldset>
		</form>
		<form action="LeServlet?flag=modifyUser" method="post">
		
		</form>
	</main>
</body>
</html>