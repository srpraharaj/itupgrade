<%-- <%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
function generateDashboard(){
	
	getReadinessActivities();
	getVerificationStatus();
	getIssueStatus();
	//getOngoingActivities();
}

function getReadinessActivities(){
	$.ajax({
		url:"api/dashboard/readiness",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,value){
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: none;' id =' " + key+ "'>" + value.activityName+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.completedTask+"/"+value.totalTask+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#readinessBody').html(items.join("")); 
		}	
	});
 }
 
function getVerificationStatus(){
	$.ajax({
		url:"api/dashboard/verification",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,testing){
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: 1px solid #11afcc;' id =' " + key+ "'>" + testing.activityName+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + testing.appTesting+"/"+testing.totalTask+"</td>");
    			if(testing.businessTesting < 0 || testing.signOff <0){
    				
    				items.push("<td class='middlealign' id =' " + key+ "'>" + "N/A" +"</td>");
        			items.push("<td class='middlealign' id =' " + key+ "'>" + "N/A" +"</td>");
    			}else{
    				
    				items.push("<td class='middlealign' id =' " + key+ "'>" + testing.businessTesting+"/"+testing.totalTask+"</td>");
        			items.push("<td class='middlealign' id =' " + key+ "'>" + testing.signOff+"/"+testing.totalTask+"</td>");
    			}
    			
    			
    			items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + testing.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#verificationBody').html(items.join("")); 
		}	
	});
 }
 
function getIssueStatus(){
	$.ajax({
		url:"api/dashboard/issuestatus",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			console.log(data);
			$.each(data.data,function(key,issue){
				alert(issue.totalIssue);
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: none;' id =' " + key+ "'>" + issue.totalIssue+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.infraIssue + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.appIssue + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.pending + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.resolved + "</td>");
    			items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + issue.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#issueStatusBody').html(items.join("")); 
		}	
	});
 }

</script>
<div data-role="applications" class="appMainDiv" onload="generateDashboard();">
<input type="button" name="getID" id="getID" value="Get Data"
		onclick="generateDashboard();" />
	<div style="width: 100%;">
		<div id="readiness" style="width: 48%; float: left;">
			<table class="appTable">
				<thead>
					<tr>
						<td colspan="10" style="text-align: center;">Go-Live
							Readiness</td>
					</tr>
					<tr>
						<td>Components</td>
						<td>Task Completed</td>
						<td>Progress %</td>
					</tr>
				</thead>
				<tbody id="readinessBody">
					<!-- <tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">ISAM
							& Infra Readiness</td>
						<td class="middlealign">0/9</td>
						<td class="middlealign">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">Middleware
							(DP+IIB) Readiness</td>
						<td class="middlealign">0/12</td>
						<td class="middlealign">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">WAS
							Application Readiness</td>
						<td class="middlealign">0/8</td>
						<td class="middlealign">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">.Net
							& Sharepoint Readiness</td>
						<td class="middlealign">0/4</td>
						<td class="middlealign">0%</td>
					</tr>
					<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">Sharepoint Readiness</td>
					<td class="middlealign">0/1</td>
					<td class="middlealign">0%</td>
				</tr> -->
				</tbody>
			</table>
		</div>
		<div style="width: 51.8%; float: right;">
			<table class="appTable">

				<thead>
					<tr>

						<td colspan="10" style="text-align: center;">Application
							Verification & Testing</td>
					</tr>
					<tr>
						<td style="width: 25%;">Components</td>
						<td style="width: 20%;">App Team Testing</td>
						<td style="width: 20%;">Business Testing</td>
						<td style="width: 20%;">Business Sign-off</td>
						<td style="width: 15%;">% Completion</td>
					</tr>
				</thead>
				<tbody id="verificationBody">
					<!-- <tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">ISAM
							Testing</td>
						<td class="middlealign">0/9</td>
						<td class="middlealign">N/A</td>
						<td class="middlealign">N/A</td>
						<td class="middlealign" style="border-right: none;">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">WAS
							Application Testing</td>
						<td class="middlealign">0/23</td>
						<td class="middlealign">0/23</td>
						<td class="middlealign">0/23</td>
						<td class="middlealign" style="border-right: none;">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">.Net
							Application Testing</td>
						<td class="middlealign">0/4</td>
						<td class="middlealign">0/4</td>
						<td class="middlealign">0/4</td>
						<td class="middlealign" style="border-right: none;">0%</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">Sharepoint Testing</td>
						<td class="middlealign">0/1</td>
						<td class="middlealign">0/1</td>
						<td class="middlealign">0/1</td>
						<td class="middlealign" style="border-right: none;">0%</td>
					</tr> -->
				</tbody>
			</table>
		</div>
		<br style="clear: both;" />
	</div>
	<br />
	<div style="width: 100%;">
		<div style="width: 48%; float: left;">
			<table class="issueTable">
				<thead>
					<tr>
						<td colspan="10" style="text-align: center;">Issue Tracker</td>
					</tr>
					<tr>
						<td>No of Issue raised</td>
						<td>Infra Issue</td>
						<td>Application Issue</td>
						<td>In Progress</td>
						<td>Resolved</td>
						<td>% Completion</td>
					</tr>
				</thead>
				<tbody id="issueStatusBody">
					<!-- <tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">0</td>
						<td class="middlealign">0</td>
						<td class="middlealign">0</td>
						<td class="middlealign">0</td>
						<td class="middlealign">0</td>
						<td class="middlealign" style="border-right: none;">0%</td>
					</tr> -->
				</tbody>
			</table>
		</div>
		<div style="width: 51.8%; float: right;">
			<table class="appTable">

				<thead>
					<tr>

						<td colspan="10" style="text-align: center;">Ongoing
							Activities & Status</td>
					</tr>
					<tr>
						<td style="width: 20%;">Expected Start Time</td>
						<td style="width: 45%;">Activity Details</td>
						<td style="width: 20%;">Expected End Time</td>
						<td style="width: 15%;">Status</td>
					</tr>
				</thead>
				<tbody id="activitiesBody">
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">-- PM</td>
						<td class="middlealign">--</td>
						<td class="middlealign">-- PM </td>
						<td class="middlealign">--</td>
					</tr>
					<tr>
						<td class="middlealign" style="border-left: 1px solid #11afcc;">-- PM</td>
						<td class="middlealign">--</td>
						<td class="middlealign">-- PM </td>
						<td class="middlealign">--</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br style="clear: both;" />
	</div>
</div>
 --%>