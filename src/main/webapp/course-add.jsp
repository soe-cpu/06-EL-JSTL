<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>

<link href="./common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>


</head>
<body>
	<div class="container">
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="row mt-2">
			<div class="col">
				<h3>Add New Course</h3>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<hr />
				<c:url value="/addcourse" var="add"></c:url>
				<form action="${add}" class="form col-6" method="post">
					<div class="form-group">
						<label>Course Name</label>
						<input type="text" name="coursename" required="required" placeholder="Enter Course Name" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Price</label>
						<input type="text" name="price" required="required" placeholder="Enter Price" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="level">Level</label>
						<select name="level" id="level" class="form-control">
							<option value="Basic">Basic</option>
							<option value="Intermediate">Intermediate</option>
							<option value="Advance">Advance</option>
						</select>
					</div>
					<div class="form-group">
						<label>Duration(Month)</label>
						<input type="number" name="duration" required="required" placeholder="Enter duration" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Start Date</label>
						<input type="date" name="startdate" required="required" placeholder="Enter Start Date" class="form-control"/>
					</div>
					<button type="submit" class="btn btn-outline-primary">Save</button>
					<button type="reset" class="btn btn-outline-danger">Clear</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>