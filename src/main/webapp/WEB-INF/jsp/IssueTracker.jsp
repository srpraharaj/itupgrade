<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-role="issues" class="issueMainDiv">
	<table class="issueTable">

		<thead>
			<tr>
				<td class="leftPadding" rowspan="1" style="width:2%;">Id</td>
				<td rowspan="5" style="width:18%;">Description</td>
				<td rowspan="5" style="width:5%;">App Name</td>
				<td rowspan="5" style="width:7%;">Reported By</td>
				<td rowspan="2" style="width:8%;">Reported Timestamp</td>
				<td rowspan="5" style="width:5%;">Issue Type</td>
				<td rowspan="2" style="width:8%;">Assigned To</td>
				<td rowspan="2" style="width:5%;">Status</td>
				<td rowspan="2" style="width:8%;">Resolved Timestamp</td>
				<td rowspan="4" style="width:13%;">Comments</td>

			</tr>
		</thead>
		<c:forEach var="issue" items = "${issueList}">
		<tr>
			<td class="leftPadding">${issue.issue_id}</td>
			<td class="middlealign">${issue.description}</td>
			<td class="middlealign">${issue.appName}</td>
			<td class="middlealign" >${issue.reportedTeamName}</td>
			<td class="middlealign" >${issue.reportedTime}</td>
			<td class="middlealign" >${issue.issueType}</td>
			<td class="middlealign" >${issue.assignedTeam}</td>
			<td class="middlealign">${issue.status}</td>
			<td class="middlealign">${issue.resolvedTime}</td>
			<td class="middlealign" style="border-right: none;">${issue.comments}</td>
		</tr>
		</c:forEach>
		
	</table>
</div>