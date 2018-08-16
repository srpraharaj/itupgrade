<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
    function getDataFromAPI(){
    	$.ajax({
    		
    		url:"api/isamactivities/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			var items =[];
    			console.log(data);
    			$.each(data,function(key,isamAct){
    				alert(data.slNo);
    				alert(isamAct.slNo);
    				
    				if (data.slNo %2 != 0) {
    					items.push("<tr>");
    				} else {	
    			  		items.push("<tr style='background-color: #dee3ea;'>");
					} 
					    items.push("<td style='padding-left:8px;' id =' " + key+ "'>" + data.slNo+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.activity+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.chgRecord+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.startTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.endTime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.teamResponsible+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.taskStatus+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.issueReported+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + data.finalStatus+"</td>");
        				items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + data.comments+"</td>");
        				items.push("</tr>");

					});
    			$('#isamActivitiesBody').html(items.join("")); 
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
	<!-- <input type="button" name="getID" id="getID" value="Get Data"
		onclick="getDataFromAPI();" /> -->
	<div style="width: 100%;">
		<table class="appTable">

			<thead>
				<tr>
					<td rowspan="1" style="width: 1.5%;">No</td>
					<td rowspan="4" style="width: 14%;">Activities</td>
					<td rowspan="4" style="width: 6%;">Change Record</td>
					<td rowspan="4" style="width: 6%;">Start Time</td>
					<td rowspan="4" style="width: 6%;">End Time</td>
					<td rowspan="4" style="width: 7%;">Team Responsible</td>
					<td rowspan="4" style="width: 5%;">Task Status</td>
					<td rowspan="4" style="width: 5.5%;">Issue Reported</td>
					<td rowspan="4" style="width: 5%;">Final Status</td>
					<td rowspan="4" style="width: 12%;">Comments</td>
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
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'ready'}">
										<td class="middlealign" style="background-color: #00e6ac;font-weight:bold;">${isamAct.finalStatus}</td>
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
										test="${fn:toLowerCase(isamAct.finalStatus) eq 'ready'}">
										<td class="middlealign" style="background-color: #00e6ac;font-weight:bold;">${isamAct.finalStatus}</td>
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
