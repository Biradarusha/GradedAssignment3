<%

	String session_username = (String)session.getAttribute("username");
	
%>

<div>
	<div style="float: left">
		<% if(session_username != null) { %>
			<a href="${pageContext.request.contextPath}/add">Add</a> | 
			<a href="${pageContext.request.contextPath}/list">List</a>
		<% } %>
	</div>

	<div style="float: right">
		<% if(session_username == null) { %>
			<a href="${pageContext.request.contextPath}/login">Login</a>
		<% } %>
		
		<% if(session_username != null) { %>
			Welcome <%= session.getAttribute("username") %> | 
			<a href="${pageContext.request.contextPath}/logout">Logout</a>
		<% } %>

	</div>
</div>


<br />
<br />

<center>
	<header style="background-color: green; color: white; height: 50px;">
		<h1>Students CRUD App</h1>
	</header>
</center>
