<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min(2).css"/>
<link rel="stylesheet" href="css/accueil.css"/>
<title>Menu Admin</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#"><%= ((org.eclipse.model.Compte) session.getAttribute("userOK")).getLogin() %></a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
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
		        	<a class="nav-link" href="#">Gerer mon compte</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">Gerer les utilisateurs</a>
		        </li>
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false">Articles</a>
		          <div class="dropdown-menu">
		            <a class="dropdown-item" href="#">Action</a>
		            <a class="dropdown-item" href="#">Another action</a>
		            <a class="dropdown-item" href="#">Something else here</a>
		            <div class="dropdown-divider"></div>
		            <a class="dropdown-item" href="#">Separated link</a>
		          </div>
		        </li>
		         <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false">Catégories</a>
		          <div class="dropdown-menu">
		            <a class="dropdown-item" href="#">Action</a>
		            <a class="dropdown-item" href="#">Another action</a>
		            <a class="dropdown-item" href="#">Something else here</a>
		            <div class="dropdown-divider"></div>
		            <a class="dropdown-item" href="#">Separated link</a>
		          </div>
		        </li>
		      </ul>
		      <div class="d-flex">
		        <a href="logout.jsp" class="btn btn-secondary my-2 my-sm-0">Deconnexion</a>
		      </div>
		    </div>
		  </div>
		</nav>
	</header>
	<main>
	
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>