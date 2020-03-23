<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doggo updated</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty dog }">
			<h1>Dog #${dog.id} updated!</h1>
			<h2>Breed: ${dog.breed }</h2>
		</c:when>
	</c:choose>
	<a class="btn btn-lg btn-primary" href="home.do" role="button">Home</a>
	
</body>
</html>