<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
    function getMiddlewareDataFromAPI(){
    	$.ajax({
    		url:"api/middleware/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			var items =[];
    			console.log(data);
    			$.each(data.data,function(key,mddlAct){
    				if (mddlAct.activityId %2 != 0) {
    					items.push("<tr>");
    				} else {	
    			  		items.push("<tr style='background-color: #dee3ea;'>");
					} 
					    items.push("<td style='padding-left:8px;' id =' " + key+ "'>" + mddlAct.activityId+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.componentType+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.activityName+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.chgRecord+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.startTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.endTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.teamResponsible+"</td>");
        				
        				if(mddlAct.changeStatus.toLowerCase() == "completed"){
        					items.push("<td class='middlealign' style='background-color: #1affc6;' id =' " + key+ "'>" + mddlAct.changeStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.changeStatus+"</td>");
        				}
        				
        				if(mddlAct.verificationStatus.toLowerCase() == "verified"){
        					items.push("<td class='middlealign' style='background-color: #00ffbf;' id =' " + key+ "'>" + mddlAct.verificationStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.verificationStatus+"</td>");
        				}
        				
        				if(mddlAct.havingIssue.toLowerCase() == "yes"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d;' id =' " + key+ "'>" + mddlAct.havingIssue+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + mddlAct.havingIssue+"</td>");
        				}
        				
        				if(mddlAct.finalStatus.toLowerCase() == "success"){
        					items.push("<td class='middlealign' style='background-color: #33cc00; font-weight: bold;border-right: none;' id =' " + key+ "'>" + mddlAct.finalStatus+"</td>");
        				}else if(mddlAct.finalStatus.toLowerCase() == "partial success"){
        					items.push("<td class='middlealign' style='background-color: #ccff33; font-weight: bold;border-right: none;' id =' " + key+ "'>" + mddlAct.finalStatus+"</td>");
        				}else if(mddlAct.finalStatus.toLowerCase() == "failed"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d; font-weight: bold;border-right: none;' id =' " + key+ "'>" + mddlAct.finalStatus+"</td>");
        				}else {
        					items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + mddlAct.finalStatus+"</td>");
        				}
        				items.push("</tr>");
					});
    			$('#mddlewareActivitiesBody').html(items.join("")); 
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
		onclick="getMiddlewareDataFromAPI();" />
	<div style="width: 100%;">
		<table class="appTable">

			<thead>
				<tr>
					<td rowspan="1" style="width: 1.5%;">No</td>
					<td rowspan="4" style="width: 6%;">Component</td>
					<td rowspan="4" style="width: 12.5%;">Activity Name</td>
					<td rowspan="4" style="width: 4%;">Change Record</td>
					<td rowspan="4" style="width: 6%;">Expected Start Time (PST)</td>
					<td rowspan="4" style="width: 6%;">Expected End Time (PST)</td>
					<td rowspan="4" style="width: 8%;">Team Responsible</td>
					<td rowspan="4" style="width: 4.5%;">Task Status</td>
					<td rowspan="4" style="width: 4.5%;">Verified?</td>
					<td rowspan="4" style="width: 5%;">Issue Reported</td>
					<td rowspan="4" style="width: 5%;">Final Status</td>
					
				</tr>
			</thead>
			<tbody id="mddlewareActivitiesBody">
				<c:forEach var="mddlAct" items="${middlewareActivityList}">
					<c:choose>
						<c:when test="${mddlAct.activityId % 2 != 0 }">

							<%-- <tr <c:when test="${mddlAct.slNo % 2 == 0 }"> style="background-color: #dee3ea;"</c:when> >
						
						</tr> --%>
							<tr>
								<td style="padding-left: 8px;" id="activityId">${mddlAct.activityId}</td>
								<td class="middlealign" id="componentType">${mddlAct.componentType}</td>
								<td class="middlealign" id="activityName">${mddlAct.activityName}</td>
								<td class="middlealign" id="chgRecord">${mddlAct.chgRecord}</td>
								<td class="middlealign" id="startTime">${mddlAct.startTime}</td>
								<td class="middlealign" id="endTime">${mddlAct.endTime}</td>
								<td class="middlealign" id="teamResponsible">${mddlAct.teamResponsible}</td>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.changeStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #1affc6;">${mddlAct.changeStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.changeStatus}</td>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.verificationStatus) eq 'verified'}">
										<td class="middlealign" style="background-color: #00ffbf;">${mddlAct.verificationStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.verificationStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${fn:toLowerCase(mddlAct.havingIssue) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${mddlAct.havingIssue}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.havingIssue}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign" style="border-right: none;">${mddlAct.finalStatus}</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:when>
						<c:otherwise>
							<tr style="background-color: #dee3ea;">
								<td style="padding-left: 8px;" id="activityId">${mddlAct.activityId}</td>
								<td class="middlealign" id="componentType">${mddlAct.componentType}</td>
								<td class="middlealign" id="activityName">${mddlAct.activityName}</td>
								<td class="middlealign" id="chgRecord">${mddlAct.chgRecord}</td>
								<td class="middlealign" id="startTime">${mddlAct.startTime}</td>
								<td class="middlealign" id="endTime">${mddlAct.endTime}</td>
								<td class="middlealign" id="teamResponsible">${mddlAct.teamResponsible}</td>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.changeStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #1affc6;">${mddlAct.changeStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.changeStatus}</td>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.verificationStatus) eq 'verified'}">
										<td class="middlealign" style="background-color: #00ffbf;">${mddlAct.verificationStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.verificationStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${fn:toLowerCase(mddlAct.havingIssue) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${mddlAct.havingIssue}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${mddlAct.havingIssue}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(mddlAct.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d; border-right: none;">${mddlAct.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign" style="border-right: none;">${mddlAct.finalStatus}</td>
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
		<p style="text-shadow: black;text-align: center;font-family: sans-serif;font-size: xx-large;"> DP + IIB is ready!! </p>
	</div> -->
</div>
