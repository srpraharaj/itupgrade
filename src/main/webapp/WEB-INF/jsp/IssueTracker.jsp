<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
function getIssueDetailsFromAPI(){
	$.ajax({
		url:"api/issues/all",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,issue){
				if (issue.issueId %2 != 0) {
					items.push("<tr>");
				} else {	
			  		items.push("<tr style='background-color: #dee3ea;'>");
				} 
				items.push("<td class='middlealign' id =' " + key+ "'>" + issue.issueId +"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.description + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.appName +"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.reportedTeamName + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.reportedTime +"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.issueType + "</td>");
    			
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.assignedTeam + "</td>");
    			
    			if(issue.status.toLowerCase() == "resolved"){
					items.push("<td class='middlealign' style='background-color: #00e6ac;' id =' " + key+ "'>" + issue.status+"</td>");
				}else{
					items.push("<td class='middlealign' id =' " + key+ "'>" + issue.status+"</td>");
				}
    			
    			if(issue.resolvedTime == null || issue.resolvedTime.toLowerCase() =="" ){
    				items.push("<td class='middlealign' id =' " + key+ "'>" + "" +"</td>");
    			}else{
    				items.push("<td class='middlealign' id =' " + key+ "'>" + issue.resolvedTime +"</td>");	
    			}
    			
    			items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + issue.comments + "</td>");
    			items.push("</tr>");
				});
			$('#issueTrackerBody').html(items.join("")); 
		}	
	});
 }
 
 </script>

<div data-role="issues" class="issueMainDiv">
<input type="button" name="getID" id="getID" value="Get Data"
		onclick="getIssueDetailsFromAPI();" />
	<table class="issueTable">
		<thead>
			<tr>
				<td class="leftPadding" rowspan="1" style="width:1.5%;">Id</td>
				<td rowspan="5" style="width: 17.5%;">Issue Description</td>
				<td rowspan="5" style="width: 5%;">App Name</td>
				<td rowspan="5" style="width: 6%;">Reported App Team</td>
				<td rowspan="2" style="width: 8%;">Reported Timestamp (PST)</td>
				<td rowspan="5" style="width: 4.5%;">Issue Type</td>
				<td rowspan="2" style="width: 10%;">Assigned To</td>
				<td rowspan="2" style="width: 5.5%;">Status</td>
				<td rowspan="2" style="width: 8%;">Resolved Timestamp (PST)</td>
				<td rowspan="4" style="width: 13%;">Comments</td>
			</tr>
		</thead>
		<tbody id="issueTrackerBody">
		<c:forEach var="issue" items="${issueList}">
		  <c:choose>
		  	<c:when test="${issue.issueId % 2 != 0 }">
		  		<tr>
				<td class="leftPadding">${issue.issueId}</td>
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
		  	</c:when>
		  	<c:otherwise>
		  		<tr style="background-color: #dee3ea;">
				<td class="leftPadding">${issue.issueId}</td>
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
		  	
		  	</c:otherwise>
		  </c:choose>
			
		</c:forEach>
		</tbody>
	</table>
</div>