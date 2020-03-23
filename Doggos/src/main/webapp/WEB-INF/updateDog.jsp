<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update dog</title>
</head>
<body>
<a class="btn btn-lg btn-primary" href="home.do" role="button">Home</a>
<form:form action="update.do" method="POST" modelAttribute="dog">
		<input type="hidden" name="id" value="${dog.id}">
		<form:label path="breed">Breed:</form:label>
		<form:input path="breed" />
		<br />
		<form:label path="size">Size:</form:label>
		<form:input path="size" />
		<br />
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<form:errors path="description" />
		
		
		
	
		<input type="submit" value="Modify" />
	
	</form:form>

</body>
</html>