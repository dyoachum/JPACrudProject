<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Dog</title>
</head>
<body>
<c:choose>
		<c:when test="${delete == true}">
			Doggo DELETED ${dogID}
		</c:when>
		<c:otherwise>
			<p>No Doggo found</p>
		</c:otherwise>
</c:choose>
</body>
</html>