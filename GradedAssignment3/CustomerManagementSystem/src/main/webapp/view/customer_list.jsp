<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="jstlc" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<center>
		<h3>Students List</h3>
		<table border="1" cellspacing="5" cellpadding="10">
			<thead>
				<th>id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</thead>
			<jstlc:forEach var="customer" items="${Customers}">
				<tr>
					<td>${customer.id}</td>
					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.email}</td>
					<td>
						<a href="edit?id=${customer.id}">Edit</a> | 
						<a href="delete?id=${customer.id}">Delete</a>
					</td>
				</tr>
			</jstlc:forEach>
		</table>
	</center>
</body>
</html>