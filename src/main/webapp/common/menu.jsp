<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/common/css/bootstrap.min.css" var="bsCSS"></c:url>
<c:url value="/common/js/jquery.min.js" var="jqJS"></c:url>
<c:url value="/common/js/bootstrap.min.js" var="bsJS"></c:url>
<link href="${bsCSS }" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${jqJS }"></script>
<script type="text/javascript" src="${bsJS }"></script>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<ul class="navbar-nav">
				<li class="navbar-item">
					<a href="<%= pageContext.getServletContext().getContextPath() %>" class="nav-link ${empty title ? 'active' : '' }">Courses</a>
				</li>
				<li class="navbar-item">
					<c:url value="/addcourse" var="courseAdd"></c:url>
					<a href="${courseAdd }" class="nav-link ${(not empty title and title == 'addcourse') ? 'active' : '' }">Add Course</a>
				</li>
				<li class="navbar-item">
					<c:url value="/student.jsp" var="student"></c:url>
					<a href="${student }" class="nav-link">Students</a>
				</li>
				<li class="navbar-item">
					<c:url value="/addstudent" var="studentAdd"></c:url>
					<a href="${studentAdd }" class="nav-link ${(not empty title and title == 'addstudent') ? 'active' : '' }">Add Student</a>
				</li>
			</ul>
		</nav>