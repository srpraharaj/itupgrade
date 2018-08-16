<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div data-role="issues" class="issueMainDiv">
	<table class="issueTable">
		<thead>
			<tr>
				<td class="leftPadding" rowspan="1" style="width:1.5%;">Id</td>
				<td rowspan="5" style="width: 17.5%;">Description</td>
				<td rowspan="5" style="width: 5%;">App Name</td>
				<td rowspan="5" style="width: 6%;">App Team</td>
				<td rowspan="2" style="width: 8%;">Reported Timestamp</td>
				<td rowspan="5" style="width: 4.5%;">Issue Type</td>
				<td rowspan="2" style="width: 10%;">Assigned To</td>
				<td rowspan="2" style="width: 5.5%;">Status</td>
				<td rowspan="2" style="width: 8%;">Resolved Timestamp</td>
				<td rowspan="4" style="width: 13%;">Comments</td>
			</tr>
		</thead>
		<c:forEach var="issue" items="${issueList}">
			<tr>
				<td class="leftPadding">${issue.issue_id}</td>
				<td class="middlealign">${issue.description}</td>
				<td class="middlealign">${issue.appName}</td>
				<td class="middlealign">${issue.reportedTeamName}</td>
				<td class="middlealign">${issue.reportedTime}</td>
				<td class="middlealign">${issue.issueType}</td>
				<td class="middlealign">${issue.assignedTeam}</td>
				<c:choose>
					<c:when test="${fn:toLowerCase(issue.status) eq 'resolved'}">
						<td class="middlealign" style="background-color: #00e6ac;">${issue.status}</td>
					</c:when>
					<c:otherwise>
						<td class="middlealign">${issue.status}</td>
					</c:otherwise>
				</c:choose>
				<td class="middlealign">${issue.resolvedTime}</td>
				<td class="middlealign" style="border-right: none;">${issue.comments}</td>
			</tr>
		</c:forEach>
	</table>
</div>