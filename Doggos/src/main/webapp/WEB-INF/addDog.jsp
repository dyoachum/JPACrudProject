<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Doggo</title>
</head>
<body>
<a class="btn btn-lg btn-primary" href="home.do" role="button">Home</a>
<h2>Add a Dog</h2>
	<form:form action="addDog.do" method="POST" modelAttribute="dog" >
		<form:label path="breed">Breed:</form:label>
		<form:input path="breed" />
		<form:errors path="breed" />
		<br />
		<form:label path="size">Size:</form:label>
		<form:input path="size" />
		<form:errors path="size" />
		<br>
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<form:errors path="description" />
		
		<input type="submit" value="Add" />
	</form:form>


</body>
</html>