<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
    function getISAMDataFromAPI(){
    	$.ajax({
    		url:"api/isamactivities/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			var items =[];
    			//console.log(data);
    			$.each(data,function(key,isamAct){
    				if (isamAct.slNo %2 != 0) {
    					items.push("<tr>");
    				} else {	
    			  		items.push("<tr style='background-color: #dee3ea;'>");
					} 
					    items.push("<td style='padding-left:8px;' id =' " + key+ "'>" + isamAct.slNo+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.activity+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.chgRecord+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.startTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.endTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.teamResponsible+"</td>");
        				
        				if(isamAct.taskStatus.toLowerCase() == "completed"){
        					items.push("<td class='middlealign' style='background-color: #00ffbf;' id =' " + key+ "'>" + isamAct.taskStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.taskStatus+"</td>");
        				}
        				
        				if(isamAct.issueReported.toLowerCase() == "yes"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d;' id =' " + key+ "'>" + isamAct.issueReported+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.issueReported+"</td>");
        				}
        				
        				if(isamAct.finalStatus.toLowerCase() == "success"){
        					items.push("<td class='middlealign' style='background-color: #33cc00; font-weight: bold;' id =' " + key+ "'>" + isamAct.finalStatus+"</td>");
        				}else if(isamAct.finalStatus.toLowerCase() == "partial success"){
        					items.push("<td class='middlealign' style='background-color: #ccff33; font-weight: bold;' id =' " + key+ "'>" + isamAct.finalStatus+"</td>");
        				}else if(isamAct.finalStatus.toLowerCase() == "failed"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d; font-weight: bold;' id =' " + key+ "'>" + isamAct.finalStatus+"</td>");
        				}else {
        					items.push("<td class='middlealign' id =' " + key+ "'>" + isamAct.finalStatus+"</td>");
        				}
        				items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + isamAct.comments+"</td>");
        				items.push("</tr>");

					});
    			$('#isamActivitiesBody').html(items.join("")); 
    		}	
    	});
    }
</script>
<script type="text/javascript">
    var intervalId = 0;
    intervalId = setInterval(getISAMDataFromAPI,20000);
    $(document).ready(function(){
    
    });
    
</script>
<div data-role="applications" class="appMainDiv">
	<div style="width: 100%;">
		<table class="appTable">

			<thead>
				<tr>
					<td rowspan="1" style="width: 1.5%;">No</td>
					<td rowspan="4" style="width: 14%;">Activities</td>
					<td rowspan="4" style="width: 5%;">Change Record</td>
					<td rowspan="4" style="width: 6%;">Expected Start Time (PDT)</td>
					<td rowspan="4" style="width: 6%;">Expected End Time (PDT)</td>
					<td rowspan="4" style="width: 8.5%;">Team Responsible</td>
					<td rowspan="4" style="width: 4.5%;">Task Status</td>
					<td rowspan="4" style="width: 5.5%;">Issue Reported</td>
					<td rowspan="4" style="width: 6%;">Final Status</td>
					<td rowspan="4" style="width: 11%;">Comments</td>
				</tr>
			</thead>
			<tbody id="isamActivitiesBody">
				<c:forEach var="isamAct" items="${isamactivityList}">
					<c:choose>
						<c:when test="${isamAct.slNo % 2 != 0 }">
							<tr>
								<td style="padding-left: 8px;" id="slNo">${isamAct.slNo}</td>
								<td class="middlealign" id="activity">${isamAct.activity}</td>
								<td class="middlealign" id="chgRecord">${isamAct.chgRecord}</td>
								<td class="middlealign" id="startTime">${isamAct.startTime}</td>
								<td class="middlealign" id="endTime">${isamAct.endTime}</td>
								<td class="middlealign" id="teamResponsible">${isamAct.teamResponsible}</td>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.taskStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #00ffbf;">${isamAct.taskStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.taskStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.issueReported) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${isamAct.issueReported}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.issueReported}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold;">${isamAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold;">${isamAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d;">${isamAct.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.finalStatus}</td>
									</c:otherwise>
								</c:choose>
								<td class="middlealign" style="border-right: none;"
									id="comments">${isamAct.comments}</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr style="background-color: #dee3ea;">
								<td style="padding-left: 8px;" id="slNo">${isamAct.slNo}</td>
								<td class="middlealign" id="activity">${isamAct.activity}</td>
								<td class="middlealign" id="chgRecord">${isamAct.chgRecord}</td>
								<td class="middlealign" id="startTime">${isamAct.startTime}</td>
								<td class="middlealign" id="endTime">${isamAct.endTime}</td>
								<td class="middlealign" id="teamResponsible">${isamAct.teamResponsible}</td>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.taskStatus) eq 'completed'}">
										<td class="middlealign" style="background-color: #00ffbf;">${isamAct.taskStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.taskStatus}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.issueReported) eq 'yes'}">
										<td class="middlealign" style="background-color: #ff4d4d;">${isamAct.issueReported}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.issueReported}</td>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'success'}">
										<td class="middlealign"
											style="background-color: #33cc00; font-weight: bold;">${isamAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'partial success'}">
										<td class="middlealign"
											style="background-color: #ccff33; font-weight: bold;">${isamAct.finalStatus}</td>
									</c:when>
									<c:when
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'failed'}">
										<td class="middlealign"
											style="background-color: #ff4d4d;">${isamAct.finalStatus}</td>
									</c:when>
									<c:otherwise>
										<td class="middlealign">${isamAct.finalStatus}</td>
									</c:otherwise>
								</c:choose>
								<td class="middlealign" style="border-right: none;"
									id="comments">${isamAct.comments}</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Add condition to check if all Final Status are Ready , than display -->
	<!-- <div class="appFinalStatus" id="appTesting"
		style="text-align: center; width: 100%">
		<img alt="Allianz" src="images/ready_round.PNG"> <br />
		<p
			style="text-shadow: black; text-align: center; font-family: sans-serif; font-size: xx-large;">
			ISAM is ready!!</p>
	</div> -->
</div>
