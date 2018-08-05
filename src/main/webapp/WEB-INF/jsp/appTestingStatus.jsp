<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-role="applications" class="appMainDiv">
	<table class="appTable">
		<thead>
			<tr>
				<td rowspan="2" style="width: 2%;">Sl No</td>
				<td rowspan="2" style="width: 4%;">App Code</td>
				<td rowspan="2" style="width: 7%;">App Name</td>
				<td rowspan="2" style="width: 5%;">Technology</td>
				<td rowspan="2" style="width: 5%;">Business Area</td>
				<td rowspan="2" style="width: 5%;">App Readiness Status</td>
				<td colspan="2" style="width: 28%;">ADM Checkout Details</td>
				<td colspan="2" style="width: 28%;">Business Checkout Details</td>
				<td rowspan="2" style="width: 4%;">Issue Reported?</td>
				<td rowspan="2" style="width: 5%;">Final Status</td>
			</tr>
			<tr>
				<td>App Checkout</td>
				<td>Checkout Status</td>
				<td>Business Checkout</td>
				<td>Business Signoff</td>
			</tr>
		</thead>
		<tbody id="appStatusBody">
			<c:forEach var="appStatus" items="${appStatusList}">
				<c:choose>
					<c:when test="${appStatus.appId % 2 != 0 }">
						<tr>
							<td class="middlealign">${appStatus.appId}</td>
							<td class="middlealign"><a href="#" onclick="window.open('appDetails','','fullscreen=yes, scrollbars=auto');">${appStatus.appName}</a></td>
							<td class="middlealign">${appStatus.applicationDetails.appName}</td>
							<td class="middlealign">${appStatus.applicationDetails.appType}</td>
							<td class="middlealign">${appStatus.applicationDetails.businessArea}</td>
							<td class="middlealign">${appStatus.appReadinessStatus}</td>
							<td class="middlealign">${appStatus.appCheckout}</td>
							<td class="middlealign">${appStatus.appCheckoutStatus}</td>
							<td class="middlealign">${appStatus.isBusinessCheckoutReady}</td>
							<td class="middlealign">${appStatus.businessSignoff}</td>
							<td class="middlealign">${appStatus.issueReported}</td>
							<td class="middlealign" style="border-right: none;">${appStatus.finalStatus}</td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr style="background-color: #dee3ea;">
							<td class="middlealign">${appStatus.appId}</td>
							<td class="middlealign"><a href="#" onclick="window.open('appDetails','','fullscreen=yes, scrollbars=auto');">${appStatus.appName}</a></td>
							<td class="middlealign">${appStatus.applicationDetails.appName}</td>
							<td class="middlealign">${appStatus.applicationDetails.appType}</td>
							<td class="middlealign">${appStatus.applicationDetails.businessArea}</td>
							<td class="middlealign">${appStatus.appReadinessStatus}</td>
							<td class="middlealign">${appStatus.appCheckout}</td>
							<td class="middlealign">${appStatus.appCheckoutStatus}</td>
							<td class="middlealign">${appStatus.isBusinessCheckoutReady}</td>
							<td class="middlealign">${appStatus.businessSignoff}</td>
							<td class="middlealign">${appStatus.issueReported}</td>
							<td class="middlealign" style="border-right: none;">${appStatus.finalStatus}</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</div>