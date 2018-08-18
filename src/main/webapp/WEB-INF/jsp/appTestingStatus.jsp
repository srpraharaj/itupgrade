<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
	/* function openWindow(appId, status) {
		var urlString = 'appDetails?appid=' + appId + '&appStatus="' + status
				+ '"';
		window.open(urlString, '', 'fullscreen=yes, scrollbars=auto');
	} */
	
	function getAppTestingStatusFromAPI(){
    	$.ajax({
    		url:"api/appstatus/all",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			var items =[];
    			//console.log(data);
    			$.each(data.data,function(key,appStatus){
    				if (appStatus.appId %2 != 0) {
    					items.push("<tr>");
    				} else {	
    			  		items.push("<tr style='background-color: #dee3ea;'>");
					} 
					    items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appId+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appCode+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appName+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.runtime+"</td>");
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.businessArea+"</td>");
        				
        				
        				if(appStatus.appReadinessStatus.toLowerCase() == "ready"){
        					items.push("<td class='middlealign' style='background-color: #99ffe6;' id =' " + key+ "'>" + appStatus.appReadinessStatus+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appReadinessStatus+"</td>");
        				}
   
        				if(appStatus.appTesting.toLowerCase() == "completed"){
        					items.push("<td class='middlealign' style='background-color: #66ffd9;' id =' " + key+ "'>" + appStatus.appTesting+"</td>");
        				}else if(appStatus.appTesting.toLowerCase() == "failed"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d;' id =' " + key+ "'>" + appStatus.appTesting+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appTesting+"</td>");
        				}
        				
        				
        				items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.appSME+"</td>");
        				
        				
        				if(appStatus.businessTesting.toLowerCase() == "completed"){
        					items.push("<td class='middlealign' style='background-color: #4dffd2;' id =' " + key+ "'>" + appStatus.businessTesting+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.businessTesting+"</td>");
        				}
        				
        				if(appStatus.businessSignoff.toLowerCase() == "signed off"){
        					items.push("<td class='middlealign' style='background-color: #33ffcc;' id =' " + key+ "'>" + appStatus.businessSignoff+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.businessSignoff+"</td>");
        				}
        				
        				if(appStatus.issueReported.toLowerCase() == "yes"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d;' id =' " + key+ "'>" + appStatus.issueReported+"</td>");
        				}else{
        					items.push("<td class='middlealign' id =' " + key+ "'>" + appStatus.issueReported+"</td>");
        				}
        			
        				if(appStatus.finalStatus.toLowerCase() == "success"){
        					items.push("<td class='middlealign' style='background-color: #33cc00; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appStatus.finalStatus+"</td>");
        				}else if(appStatus.finalStatus.toLowerCase() == "partial success"){
        					items.push("<td class='middlealign' style='background-color: #ccff33; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appStatus.finalStatus+"</td>");
        				}else if(appStatus.finalStatus.toLowerCase() == "failed"){
        					items.push("<td class='middlealign' style='background-color: #ff4d4d; font-weight: bold;border-right: none;' id =' " + key+ "'>" + appStatus.finalStatus+"</td>");
        				}else {
        					items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + appStatus.finalStatus+"</td>");
        				}
        				items.push("</tr>");

					});
    			$('#appTestingStatusBody').html(items.join("")); 
    		}	
    	});
    }
	
</script>
<script type="text/javascript">
	var intervalId = 0;
	intervalId = setInterval(getAppTestingStatusFromAPI, 20000);
	$(document).ready(function() {

	});
</script>
<div data-role="applications" class="appMainDiv">
	<table class="appTable">
		<thead>
			<tr>
				<td rowspan="2" style="width: 2%;">Sl No</td>
				<td rowspan="2" style="width: 3%;">App Code</td>
				<td rowspan="2" style="width: 10%;">App Name</td>
				<td rowspan="2" style="width: 3%;">Runtime</td>
				<td rowspan="2" style="width: 6%;">Business Area</td>
				<td rowspan="2" style="width: 4%;">App Testing Readiness</td>
				<td colspan="1" style="width: 5%;">ADM Testing</td>
				<td colspan="3" style="width: 45%;">Business Testing and Signoff</td>
				<td rowspan="2" style="width: 3%;">Issue Reported?</td>
				<td rowspan="2" style="width: 5%;">Final Status</td>
			</tr>
			<tr>
				<td>App Testing</td>
				<td>SE/BA/SME</td>
				<td>Testing Status</td>
				<td>Business Sign-off</td>
			</tr>
		</thead>
		<tbody id="appTestingStatusBody">
			<c:forEach var="appStatus" items="${appStatusList}">
				<c:choose>
					<c:when test="${appStatus.appId % 2 != 0 }">
						<tr>
							<td class="middlealign">${appStatus.appId}</td>
							<td class="middlealign">${appStatus.appCode}</td>
							<td class="middlealign">${appStatus.appName}</td>
							<td class="middlealign">${appStatus.runtime}</td>
							<td class="middlealign">${appStatus.businessArea}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appReadinessStatus) eq 'ready'}">
									<td class="middlealign" style="background-color: #99ffe6;">${appStatus.appReadinessStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appReadinessStatus}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'completed'}">
									<td class="middlealign" style="background-color: #66ffd9;">${appStatus.appTesting}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'failed'}">
									<td class="middlealign" style="background-color: #ff4d4d;">${appStatus.appTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appTesting}</td>
								</c:otherwise>
							</c:choose>

							<td class="middlealign">${appStatus.appSME}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessTesting) eq 'completed'}">
									<td class="middlealign" style="background-color: #4dffd2;">${appStatus.businessTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessTesting}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessSignoff) eq 'signed off'}">
									<td class="middlealign" style="background-color: #33ffcc;">${appStatus.businessSignoff}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessSignoff}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.issueReported) eq 'yes'}">
									<td class="middlealign" style="background-color: #ff4d4d;">${appStatus.issueReported}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.issueReported}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'success'}">
									<td class="middlealign"
										style="background-color: #33cc00; font-weight: bold; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'partial success'}">
									<td class="middlealign"
										style="background-color: #ccff33; font-weight: bold; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'failed'}">
									<td class="middlealign"
										style="background-color: #ff4d4d; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign" style="border-right: none;">${appStatus.finalStatus}</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:when>
					<c:otherwise>
						<tr style="background-color: #dee3ea;">
							<td class="middlealign">${appStatus.appId}</td>
							<td class="middlealign">${appStatus.appCode}</td>
							<td class="middlealign">${appStatus.appName}</td>
							<td class="middlealign">${appStatus.runtime}</td>
							<td class="middlealign">${appStatus.businessArea}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appReadinessStatus) eq 'ready'}">
									<td class="middlealign" style="background-color: #99ffe6;">${appStatus.appReadinessStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appReadinessStatus}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'completed'}">
									<td class="middlealign" style="background-color: #66ffd9;">${appStatus.appTesting}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'failed'}">
									<td class="middlealign" style="background-color: #ff4d4d;">${appStatus.appTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appTesting}</td>
								</c:otherwise>
							</c:choose>

							<td class="middlealign">${appStatus.appSME}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessTesting) eq 'completed'}">
									<td class="middlealign" style="background-color: #4dffd2;">${appStatus.businessTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessTesting}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessSignoff) eq 'signed off'}">
									<td class="middlealign" style="background-color: #33ffcc;">${appStatus.businessSignoff}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessSignoff}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.issueReported) eq 'yes'}">
									<td class="middlealign" style="background-color: #ff4d4d;">${appStatus.issueReported}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.issueReported}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'success'}">
									<td class="middlealign"
										style="background-color: #33cc00; font-weight: bold; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'partial success'}">
									<td class="middlealign"
										style="background-color: #ccff33; font-weight: bold; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'failed'}">
									<td class="middlealign"
										style="background-color: #ff4d4d; border-right: none;">${appStatus.finalStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign" style="border-right: none;">${appStatus.finalStatus}</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</div>
