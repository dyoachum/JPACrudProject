<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doggos</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<h1>Doggos</h1>
	<div>
		<form action="getDog.do" method="GET">
			Dog ID: <input type="text" name="did" /> <input type="submit"
				value="Show Dog" />
		</form>
		<c:forEach items="${dog}" var="dog"><p>
		${dog.breed}</p></c:forEach>
	</div>
	<div>
		<form class="searchButton" action="addDog.do">
			<button type="submit" class="btn btn-primary" value="Add New Dog">
				Add New Dog</button>
		</form>
	</div>
</body>
</html>