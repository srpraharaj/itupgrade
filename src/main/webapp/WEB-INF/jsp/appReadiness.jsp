<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
    function getDataFromAPI(){
    	$.ajax({
    		
    		url:"api/appreadiness/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			alert("hiiii");
    			console.log(data);
    			var items =[];
    			$.each(data.data,function(key,appReadi){
    				if (appReadi.activityId %2 != 0) {
    					items.push("<tr>");
    				} else {	
    			  		items.push("<tr style='background-color: #dee3ea;'>");
					} 
					    items.push("<td style='padding-left:8px;' id =' " + key+ "'>" + appReadi.activityId+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.activityGroup+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.activityName+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.chgRecord+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.startTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.endTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.teamResponsible+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.taskStatus+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.verificationStatus+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.havingIssue+"</td>");
        				items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + appReadi.finalStatus+"</td>");
        				items.push("</tr>");

					});
    			$('#appReadinessBody').html(items.join("")); 
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
<div data-role="applications" class="appMainDiv">
	<input type="button" name="getID" id="getID" value="Get Data"
		onclick="getDataFromAPI();" />
	<div style="width: 100%;">
		<table class="appTable">

			<thead>
				<tr>
					<td rowspan="1" style="width: 1.5%;">No</td>
					<td rowspan="4" style="width: 5%;">Activity Group</td>
					<td rowspan="4" style="width: 13.5%;">Activity Name</td>
					<td rowspan="4" style="width: 4%;">Chg Record</td>
					<td rowspan="4" style="width: 6%;">Start Time</td>
					<td rowspan="4" style="width: 6%;">End Time</td>
					<td rowspan="4" style="width: 7%;">Team Responsible</td>
					<td rowspan="4" style="width: 5%;">Task Status</td>
					<td rowspan="4" style="width: 5%;">Verified?</td>
					<td rowspan="4" style="width: 5%;">Issue Reported</td>
					<td rowspan="4" style="width: 5%;">Final Status</td>
					
				</tr>
			</thead>
			<tbody id="appReadinessBody">
				<c:forEach var="appReadi" items="${appReadinessList}">
					<c:choose>
						<c:when test="${appReadi.activityId % 2 != 0 }">
						
						<%-- <tr <c:when test="${appReadi.slNo % 2 == 0 }"> style="background-color: #dee3ea;"</c:when> >
						
						</tr> --%>
							<tr>
								<td style="padding-left: 8px;" id="activityId">${appReadi.activityId}</td>
								<td class="middlealign" id="activityGroup">${appReadi.activityGroup}</td>
								<td class="middlealign" id="activityName">${appReadi.activityName}</td>
								<td class="middlealign" id="chgRecord">${appReadi.chgRecord}</td>
								<td class="middlealign" id="startTime">${appReadi.startTime}</td>
								<td class="middlealign" id="endTime">${appReadi.endTime}</td>
								<td class="middlealign" id="teamResponsible">${appReadi.teamResponsible}</td>
								<td class="middlealign" id="taskStatus">${appReadi.taskStatus}</td>
								<td class="middlealign" id="verificationStatus">${appReadi.verificationStatus}</td>
								<td class="middlealign" id="havingIssue">${appReadi.havingIssue}</td>
								<td class="middlealign" style="border-right: none;"
									id="finalStatus">${appReadi.finalStatus}</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr style="background-color: #dee3ea;">
								<td style="padding-left: 8px;" id="activityId">${appReadi.activityId}</td>
								<td class="middlealign" id="activityGroup">${appReadi.activityGroup}</td>
								<td class="middlealign" id="activityName">${appReadi.activityName}</td>
								<td class="middlealign" id="chgRecord">${appReadi.chgRecord}</td>
								<td class="middlealign" id="startTime">${appReadi.startTime}</td>
								<td class="middlealign" id="endTime">${appReadi.endTime}</td>
								<td class="middlealign" id="teamResponsible">${appReadi.teamResponsible}</td>
								<td class="middlealign" id="taskStatus">${appReadi.taskStatus}</td>
								<td class="middlealign" id="verificationStatus">${appReadi.verificationStatus}</td>
								<td class="middlealign" id="havingIssue">${appReadi.havingIssue}</td>
								<td class="middlealign" style="border-right: none;"
									id="finalStatus">${appReadi.finalStatus}</td>
							</tr>
						</c:otherwise>
					</c:choose>


				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Add condition to check if all Final Status are Ready , than display -->
	<div class="appFinalStatus" id="appTesting">
		<img alt="Allianz" src="images/ready_round.PNG"> <br /> <label
			style="padding-right: 41%;">DP + IIB is ready!!</label>
	</div>
</div>
