
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 



<html>

<head>
<title>List Customersdsfsdfsdf</title>

</head>

<body>

	<div id="wrepper">
		<div id="header">
			<h2>CRM - Customer Relationship Managersfsd</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">

			<!-- add our html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
					</tr>
				
				</c:forEach>
			</table>

		</div>
	</div>

</body>

</html>
































