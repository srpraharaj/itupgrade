<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
    function getAppReadinessData(){
    	$.ajax({
    		
    		url:"api/appreadiness/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
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
        				
        				if(appReadi.taskStatus.toLowerCase() == "completed"){
        					items.push("<td class='middlealign' style='background-color: #1affc6;' id =' " + key+ "'>" + appReadi.taskStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.taskStatus+"</td>");
        				}
        				
        				if(appReadi.verificationStatus.toLowerCase() == "verified"){
        					items.push("<td class='middlealign' style='background-color: #00ffbf;' id =' " + key+ "'>" + appReadi.verificationStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.verificationStatus+"</td>");
        				}
        				
        				if(appReadi.havingIssue.toLowerCase() == "yes"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d;' id =' " + key+ "'>" + appReadi.havingIssue+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appReadi.havingIssue+"</td>");
        				}
        				
        				if(appReadi.finalStatus.toLowerCase() == "success"){
        					items.push("<td class='middlealign' style='background-color: #33cc00; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appReadi.finalStatus+"</td>");
        				}else if(appReadi.finalStatus.toLowerCase() == "partial success"){
        					items.push("<td class='middlealign' style='background-color: #ccff33; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appReadi.finalStatus+"</td>");
        				}else if(appReadi.finalStatus.toLowerCase() == "failed"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appReadi.finalStatus+"</td>");
        				}else {
        					items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + appReadi.finalStatus+"</td>");
        				}
        				
        				items.push("</tr>");
					});
    			$('#appReadinessBody').html(items.join("")); 
    		}	
    	});
    }
</script>
<script type="text/javascript">
    var intervalId = 0;
    intervalId = setInterval(getAppReadinessData,20000);
    $(document).ready(function(){
    
    });    
</script>
<div data-role="applications" class="appMainDiv">
	<div style="width: 100%;">
		<table class="appTable">

			<thead>
				<tr>
					<td rowspan="1" style="width: 1.5%;">No</td>
					<td rowspan="4" style="width: 4.8%;">Activity Group</td>
					<td rowspan="4" style="width: 13.5%;">Activity Name</td>
					<td rowspan="4" style="width: 4%;">Chg Record</td>
					<td rowspan="4" style="width: 6%;">Start Time (PDT)</td>
					<td rowspan="4" style="width: 6%;">End Time (PDT)</td>
					<td rowspan="4" style="width: 8.5%;">Team Responsible</td>
					<td rowspan="4" style="width: 4.2%;">Task Status</td>
					<td rowspan="4" style="width: 4.2%;">Verified?</td>
					<td rowspan="4" style="width: 5%;">Issue Reported</td>
					<td rowspan="4" style="width: 5.1%;">Final Status</td>

				</tr>
			</thead>
			<tbody id="appReadinessBody">
				<c:forEach var="appReadi" items="${appReadinessList}">
					<c:choose>
						<c:when test="${appReadi.activityId % 2 != 0 }">
							<tr>
								<td style="padding-left: 8px;" id="activityId">${appReadi.activityId}</td>
								<td class="middlealign" id="activityGroup">${appReadi.activityGroup}</td>
								<td class="middlealign" id="activityName">${appReadi.activityName}</td>
								<td class="middlealign" id="chgRecord">${appReadi.chgRecord}</td>
								<td class="middlealign" id="startTime">${appReadi.startTime}</td>
								<td class="middlealign" id="endTime">${appReadi.endTime}</td>
								<td class="middlealign" id="teamResponsible">${appReadi.teamResponsible}</td>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.taskStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #1affc6;">${appReadi.taskStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.taskStatus}</td>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.verificationStatus) eq 'verified'}">
										<td class="middlealign" style="background-color: #00ffbf;">${appReadi.verificationStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.verificationStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${fn:toLowerCase(appReadi.havingIssue) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${appReadi.havingIssue}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.havingIssue}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign" style="border-right: none;">${appReadi.finalStatus}</td>
									</c:otherwise>
								</c:choose>
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
								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.taskStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #1affc6;">${appReadi.taskStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.taskStatus}</td>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.verificationStatus) eq 'verified'}">
										<td class="middlealign" style="background-color: #00ffbf;">${appReadi.verificationStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.verificationStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${fn:toLowerCase(appReadi.havingIssue) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${appReadi.havingIssue}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${appReadi.havingIssue}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(appReadi.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d; border-right: none;">${appReadi.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign" style="border-right: none;">${appReadi.finalStatus}</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Add condition to check if all Final Status are Ready , than display -->
	<!-- <div class="appFinalStatus" id="appTesting" style="text-align: center; width: 100%">
		<img alt="Allianz" src="images/ready_round.PNG"> <br /> 
		<p style="text-shadow: black;text-align: center;font-family: sans-serif;font-size: xx-large;"> Apps are ready!! </p>
	</div> -->
</div>
