<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Test Page</title>
<script type="text/javascript" src="js/itupgrade.js"></script>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/jquery.mobile-1.4.5.min.css">
<link rel="stylesheet" href="style/bootstrap.min.css">
</head>

<script>
    function getDataFromAPI(){
    	$.ajax({
    		
    		url:"test/api/issue/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			console.log(data);
    			var items =[];
    			var items1 = [];
    			$.each(data.data,function(key,val){
    				
    				items.push("<tr>");
    				items.push("<td class='leftPadding' id =' " + key+ "'>" + val.issue_id+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.description+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.reportedTime+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.assignedteam_id+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.status+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.resolvedTime+"</td>");
    				items.push("<td class='middlealign' id =' " + key+ "'>" + val.comments+"</td>");
    				items.push("</tr>");
    				
    			});
    			
 
    			$('#issueBody').html(items.join("")); 
    		}	
    	});
    }
</script>
<script type="text/javascript">
    /* var intervalId = 0;
    intervalId = setInterval(getDataFromAPI,20000); */
    
    /* $(document).ready(function(){
    	
    	
    	///Code here
    	
    }); */
    
</script>
<body>
   <input type="button" name="getID" id="getID" value="Get Data" onclick="getDataFromAPI();"/>
   <div data-role="issues" class="issueMainDiv">
	<table class="issueTable">

		<thead>
			<tr>
				<td class="leftPadding" rowspan="1" style="width:2%;">No.</td>
				<td rowspan="5" style="width:26%;">Description</td>
				<td rowspan="2" style="width:8%;">Reported Timestamp</td>
				<td rowspan="2" style="width:7%;">Assigned Team</td>
				<td rowspan="2" style="width:5%;">Status</td>
				<td rowspan="2" style="width:8%;">Resolved Timestamp</td>
				<td rowspan="4" style="width:20%;">Comments</td>

			</tr>
		</thead>
		<tbody id="issueBody">
		<c:forEach var="issue" items = "${issueList}">
		<tr>
			<td class="leftPadding" id = "issueId">${issue.issue_id}</td>
			<td class="middlealign" id = "desc">${issue.description}</td>
			<td class="middlealign" id="reportedTime">${issue.reportedTime}</td>
			<td class="middlealign" id="assisnedTeam">${issue.assignedteam_id}</td>
			<td class="middlealign" id = "status">${issue.status}</td>
			<td class="middlealign" id="resolvedtime">${issue.resolvedTime}</td>
			<td class="middlealign" style="border-right: none;" id = "comments">${issue.comments}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
