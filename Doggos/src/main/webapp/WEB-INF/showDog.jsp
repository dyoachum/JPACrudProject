<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doggo info</title>
</head>

<body>
<a class="btn btn-lg btn-primary" href="home.do" role="button">Home</a>
	<c:choose>
		<c:when test="${! empty dog}">
			<ul>
				<li>ID: ${dog.id}
				<li>Name: ${dog.breed}</li>
				<li>Size: ${dog.size}</li>
				<li>Description: ${dog.description}</li>
			</ul>
			<form action="updateDog.do" method="GET">
				<input type="hidden" name="id" value="${dog.id}" />
				<button type="submit" class="btn btn-primary " value="Update Doggo">Update
					Dog</button>
			</form>
			<form action="deleteDog.do" method="POST">
				<input type="hidden" name="id" value="${ dog.id }" />
				<button type="submit" class="btn btn-primary " value="Delete Doggo">Delete
					Dog</button>
			</form>
		</c:when>
		<c:otherwise>
			<p>
				<strong>No Doggo Found</strong>
			</p>
		</c:otherwise>
	</c:choose>
</body>
</html>