
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>

<head>
<title>List Customers</title>
<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrepper">
		<div id="header">
			<h2>CRM - Customer Relationship Managers</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<!--add customer label -->
			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd';  return false;"
				class="add-button" />


			<!-- add our html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
						
					<!-- construct an "update" link with customer id-->
					<c:url var="updateLinkBB" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					<!-- construct an "delete" link with customer id-->
					<c:url var="DeleteLinkBB" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>

						<td>
							<!-- display the update link -->
							<a href="${updateLinkBB}">Update</a>
							| 
							<a href="${DeleteLinkBB}"
							onClick="if(!(confirm('Are you sure you want to delete this customer?'))) return false" >Delete</a>

						</td>

					</tr>

				</c:forEach>
			</table>

		</div>
	</div>

</body>

</html>
































