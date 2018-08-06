<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-role="overview" class="appMainDiv">

	<div id="appReadiness" style="width: 100%;">
		<table class="appTable">
			<thead>
				<tr>
					<td colspan="10" style="text-align: center;">Go-Live Readiness</td>
				</tr>
				<tr>
					<td>Components</td>
					<td>Task Completed</td>
					<td>Progress %</td>
				</tr>
			</thead>
			<tbody id="appReadinessBody">
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">ISAM
						& Infra Readiness</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">Middleware (DP+IIB) Readiness</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">WAS Application Readiness</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">.Net Application Readiness</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">Sharepoint Readiness</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="appcheckout" style="width: 100%;">
		<table class="appTable">
			<thead>
				<tr>
					<td colspan="10" style="text-align: center;">Application Verification</td>
				</tr>
				<tr>
					<td>Components</td>
					<td>Project Team Checkout</td>
					<td>Business Checkout</td>
					<td>Business Sign-off</td>
					<td>% Completion</td>
				</tr>
			</thead>
			<tbody id="checkoutTableBody">
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">ISAM Checkout</td>
					<td class="middlealign">2/10</td>
					<td class="middlealign">N/A</td>
					<td class="middlealign">N/A</td>
					<td class="middlealign" style="border-right: none;">60%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">WAS Application Checkout</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign">5/23</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign" style="border-right: none;">10%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">.Net Application Checkout</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign">5/23</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign" style="border-right: none;">10%</td>
				</tr>
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">Sharepoint Application Checkout</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign">5/23</td>
					<td class="middlealign">2/23</td>
					<td class="middlealign" style="border-right: none;">10%</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="issues" style="width: 100%;">
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
					<td>Fixed</td>
					<td>% Completion</td>
				</tr>
			</thead>
			<tbody id="issueTableBody">
				<tr>
					<td class="middlealign" style="border-left: 1px solid #11afcc;">10</td>
					<td class="middlealign">3</td>
					<td class="middlealign">7</td>
					<td class="middlealign">10</td>
					<td class="middlealign">0</td>
					<td class="middlealign" style="border-right: none;">10%</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>