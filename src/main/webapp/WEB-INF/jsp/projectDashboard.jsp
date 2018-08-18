<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script type="text/javascript">
	var intervalId = 0;
	intervalId = setInterval(generateDashboard, 20000);
	$(document).ready(function() {

	});
</script>
<div data-role="applications" class="appMainDiv">
	<div style="width: 100%;">
		<div id="readiness" style="width: 48%; float: left;">
			<table class="appTable">
				<thead>
					<tr>
						<td colspan="10" style="text-align: center;">Go-Live
							Readiness Activities</td>
					</tr>
					<tr>
						<td>Components</td>
						<td>Task Completed</td>
						<td>Progress %</td>
					</tr>
				</thead>
				<tbody id="readinessBody">
				</tbody>
			</table>
		</div>
		<div style="width: 51.8%; float: right;">
			<table class="appTable">

				<thead>
					<tr>

						<td colspan="10" style="text-align: center;">Application
							Verification and Testing</td>
					</tr>
					<tr>
						<td style="width: 25%;">Components</td>
						<td style="width: 20%;">App Team Testing</td>
						<td style="width: 20%;">Business Testing</td>
						<td style="width: 20%;">Business Sign-off</td>
						<td style="width: 15%;">Progress %</td>
					</tr>
				</thead>
				<tbody id="verificationBody">
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
						<td>No of Issues</td>
						<td>Infra Issues</td>
						<td>Application Issues</td>
						<td>In Progress</td>
						<td>Resolved</td>
						<td>Progress %</td>
					</tr>
				</thead>
				<tbody id="issueStatusBody">
				</tbody>
			</table>
		</div>
		<div style="width: 51.8%; float: right;">
			<table class="appTable">

				<thead>
					<tr>

						<td colspan="10" style="text-align: center;">Ongoing
							Activities and Status</td>
					</tr>
					<tr>
						<td style="width: 20%;">Expected Start Time</td>
						<td style="width: 45%;">Activity Details</td>
						<td style="width: 20%;">Expected End Time</td>
						<td style="width: 15%;">Status</td>
					</tr>
				</thead>
				<tbody id="activitiesBody">
				</tbody>
			</table>
		</div>
		<br style="clear: both;" />
	</div>
</div>
