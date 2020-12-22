<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="row">
			<div class="col">
				<h3>Add New Student</h3>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<hr />
				<c:url value="/addstudent" var="addstu"></c:url>
				<form action="${addstu}" class="form col-6" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Student Name</label>
						<input type="text" name="name" required="required" placeholder="Enter Name" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" name="email" required="required" placeholder="Enter Email" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="year">Year</label>
						<select name="year" id="year" class="form-control">
							<option value="first">First Year</option>
							<option value="second">Second Year</option>
							<option value="third">Third Year</option>
							<option value="fourth">Fourth Year</option>
							<option value="fifth">Fifth Year</option>
						</select>
					</div>
					<div class="form-group">
						<label>Age</label>
						<input type="number" name="age" required="required" placeholder="Enter age" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Date of Birth</label>
						<input type="date" name="dateOfBirth" required="required" placeholder="Enter Date of birth" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Address</label>
						<input type="text" name="address" required="required" placeholder="Enter Address" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Photo</label>
						<input type="file" name="photo" required="required" placeholder="Pick Profile Picture" class="form-control"/>				
					</div>
					<button type="submit" class="btn btn-outline-primary">Save</button>
					<button type="reset" class="btn btn-outline-danger">Clear</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>