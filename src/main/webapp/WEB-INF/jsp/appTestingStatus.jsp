<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script>
	function openWindow(appId, status) {
		//	alert(document.getElementById('appId').value);

		var urlString = 'appDetails?appid=' + appId + '&appStatus="' + status
				+ '"';
		window.open(urlString, '', 'fullscreen=yes, scrollbars=auto');
	}
</script>

<div data-role="applications" class="appMainDiv">
	<table class="appTable">
		<thead>
			<tr>
				<td rowspan="2" style="width: 2%;">Sl No</td>
				<td rowspan="2" style="width: 4%;">App Code</td>
				<td rowspan="2" style="width: 8%;">App Name</td>
				<td rowspan="2" style="width: 4%;">Runtime</td>
				<td rowspan="2" style="width: 5%;">Business Area</td>
				<td rowspan="2" style="width: 5%;">App Testing Readiness</td>
				<td colspan="1" style="width: 5%;">ADM Testing</td>
				<td colspan="3" style="width: 45%;">Business Testing & Signoff</td>
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
		<tbody id="appStatusBody">
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
									<td class="middlealign" style="background-color:#99ffe6;">${appStatus.appReadinessStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appReadinessStatus}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'completed'}">
									<td class="middlealign" style="background-color:#66ffd9;">${appStatus.appTesting}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'failed'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.appTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appTesting}</td>
								</c:otherwise>
							</c:choose>
							
							<td class="middlealign">${appStatus.appSME}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessTesting) eq 'completed'}">
									<td class="middlealign" style="background-color:#4dffd2;">${appStatus.businessTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessTesting}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessSignoff) eq 'signed off'}">
									<td class="middlealign" style="background-color:#33ffcc;">${appStatus.businessSignoff}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessSignoff}</td>
								</c:otherwise>
							</c:choose>
							
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.issueReported) eq 'yes'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.issueReported}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.issueReported}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'success'}">
									<td class="middlealign" style="background-color:#33cc00;font-weight:bold;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'partial success'}">
									<td class="middlealign" style="background-color:#ccff33;font-weight:bold;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'failed'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.finalStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.finalStatus}</td>
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
									<td class="middlealign" style="background-color:#99ffe6;">${appStatus.appReadinessStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appReadinessStatus}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'completed'}">
									<td class="middlealign" style="background-color:#66ffd9;">${appStatus.appTesting}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.appTesting) eq 'failed'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.appTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.appTesting}</td>
								</c:otherwise>
							</c:choose>
							
							<td class="middlealign">${appStatus.appSME}</td>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessTesting) eq 'completed'}">
									<td class="middlealign" style="background-color:#4dffd2;">${appStatus.businessTesting}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessTesting}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.businessSignoff) eq 'signed off'}">
									<td class="middlealign" style="background-color:#33ffcc;">${appStatus.businessSignoff}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.businessSignoff}</td>
								</c:otherwise>
							</c:choose>
							
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.issueReported) eq 'yes'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.issueReported}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.issueReported}</td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'success'}">
									<td class="middlealign" style="background-color:#33cc00;font-weight:bold;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'partial success'}">
									<td class="middlealign" style="background-color:#ccff33;font-weight:bold;">${appStatus.finalStatus}</td>
								</c:when>
								<c:when
									test="${fn:toLowerCase(appStatus.finalStatus) eq 'failed'}">
									<td class="middlealign" style="background-color:#ff4d4d;">${appStatus.finalStatus}</td>
								</c:when>
								<c:otherwise>
									<td class="middlealign">${appStatus.finalStatus}</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</div>
