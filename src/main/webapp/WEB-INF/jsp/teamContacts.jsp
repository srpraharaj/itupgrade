<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-role="contacts" class="contactMainDiv">
	<table class="contactTable">

		<thead>
			<tr>
				<td rowspan="2" style="width: 5%;">Team Names</td>
				<td colspan="2" style="width: 31%;">Primary Contact</td>
				<td colspan="2" style="width: 31%;">Secondary Contact</td>
				<td colspan="2" style="width: 31%;">Manager's Contact</td>

			</tr>
			<tr>
				<td>Name</td>
				<td>Email</td>
				<td>Name</td>
				<td>Email</td>
				<td>Name</td>
				<td>Email</td>

			</tr>
		</thead>
		<c:forEach var="teams" items="${teamList}">
			<c:choose>
				<c:when test="${teams.teamId % 2 != 0 }">
					<tr>
						<td style="border-right: 1px solid #11afcc;">${teams.teamName}</td>
						<td>${teams.primaryContact.userName}</td>
						<td style="border-right: 1px solid #11afcc;">${teams.primaryContact.emailId}</td>
						<td>${teams.secondaryContact.userName}</td>
						<td style="border-right: 1px solid #11afcc;">${teams.secondaryContact.emailId}</td>
						<td>${teams.managersContact.userName}</td>
						<td>${teams.managersContact.emailId}</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr style="background-color: #dee3ea;">
						<td style="border-right: 1px solid #11afcc;">${teams.teamName}</td>
						<td>${teams.primaryContact.userName}</td>
						<td style="border-right: 1px solid #11afcc;">${teams.primaryContact.emailId}</td>
						<td>${teams.secondaryContact.userName}</td>
						<td style="border-right: 1px solid #11afcc;">${teams.secondaryContact.emailId}</td>
						<td>${teams.managersContact.userName}</td>
						<td>${teams.managersContact.emailId}</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</c:forEach>

	</table>
</div>
