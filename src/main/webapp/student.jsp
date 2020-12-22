<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="row">
			<div class="col">
				<h3>Students</h3>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table">
					<tr>
						<th>Student Name</th>
						<th>Email</th>
						<th>Photo</th>
						<th>Age</th>
						<th>Year</th>
						<th>Address</th>
						<th>Date of Birth</th>
					</tr>
					<c:forEach items="${studentlist }" var="student">
					<tr>
						<td>${student.name }</td>
						<td>${student.email }</td>
						<td><img src="/06-EL-JSTL/imgUploads/${student.profile}" alt="Image" width="100" height="100"/></td>
						<td>${student.age }</td>
						<td>${student.year }</td>
						<td>${student.address }</td>
						<td>${student.dateOfBirth }</td>
					</tr>
					
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>

</body>
</html>