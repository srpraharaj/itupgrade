<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-role="contacts" class="contactMainDiv">
	<table class="contactTable">

		<thead>
			<tr>
				<td rowspan="2" style="width: 5%;">Team Names</td>
				<td colspan="3" style="width: 31.7%;">Primary Contact</td>
				<td colspan="3" style="width: 31.7%;">Secondary Contact</td>
				<td colspan="3" style="width: 31.6%;">Manager's Contact</td>

			</tr>
			<tr>
				<td>Name</td>
				<td>Email</td>
				<td>Mobile</td>
				<td>Name</td>
				<td>Email</td>
				<td>Mobile</td>
				<td>Name</td>
				<td>Email</td>
				<td>Mobile</td>
			</tr>
		</thead>
		<!-- <tr>
			<td style="border-right: 1px solid #11afcc;">WAS Application
				Support</td>
			<td class="middlealign">Srutiranjan Praharaj</td>
			<td class="middlealign">sprahar1@ffic.com</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">XYZ</td>
			<td class="middlealign">abc</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">Prakash</td>
			<td class="middlealign">sprahar1@ffic.com</td>
			<td class="middlealign">4153010598</td>
		</tr>
		<tr style="background-color:#dee3ea;">
			<td style="border-right: 1px solid #11afcc;">WAS Middleware
				Support</td>
			<td class="middlealign">Antonio</td>
			<td class="middlealign">Antonio@ffic.com</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">XYZ</td>
			<td class="middlealign">abc</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">abc</td>
			<td class="middlealign">hello@ffic.com</td>
			<td class="middlealign">4153010598</td>
		</tr>
		<tr>
			<td style="border-right: 1px solid #11afcc;">ISAM Support</td>
			<td class="middlealign">Vipin Vijay</td>
			<td class="middlealign">Antonio@ffic.com</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">Naresh Potnuru</td>
			<td class="middlealign">abc</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">4153010598</td>
			<td class="middlealign">Prakash</td>
			<td class="middlealign">hello@ffic.com</td>
			<td class="middlealign">4153010598</td>
		</tr> -->
		<c:forEach var="teams" items = "${teamList}">
		 <tr>
			<td style="border-right: 1px solid #11afcc;">${teams.teamname}</td>
			<td class="middlealign">${teams.pname}</td>
			<td class="middlealign">${teams.pemail}</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">${teams.pmobile}</td>
			<td class="middlealign">${teams.sname}</td>
			<td class="middlealign">${teams.semail}</td>
			<td class="middlealign" style="border-right: 1px solid #11afcc;">${teams.smobile}</td>
			<td class="middlealign">${teams.mname}</td>
			<td class="middlealign">${teams.memail}</td>
			<td class="middlealign">${teams.mmobile}</td>
		</tr>
		</c:forEach>
		
	</table>
</div>
