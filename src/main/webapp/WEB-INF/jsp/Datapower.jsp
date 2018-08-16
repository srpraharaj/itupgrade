<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<div data-role="applications" class="appMainDiv">

 <div style="width: 100%;">
     <div style="width:49.4%;float:left;">
      <table class="appTable">

		<thead>
			<tr>
				
				<td colspan="10" style="text-align: center;">DataPower Services Deployment by Release Management/IBM-ADM</td>
				

			</tr>
			<tr>
				<td>Service Name</td>
				<td>Deployed ?</td>
				<td>Verified ?</td>
				<td>Issue Reported ?</td>
				<td>Final Status</td>
			</tr>
		</thead>
        <tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">SSO Service</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">No</td>
			<td class="middlealign">Not Ready</td>
		</tr>
        <tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">Directory Service</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">No</td>
			<td class="middlealign">Not Ready</td>
		</tr>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">EPM CCS Service</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">No</td>
			<td class="middlealign appReady">Ready</td>
		</tr>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">EUS Service</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">In Progress</td>
			<td class="middlealign">No</td>
			<td class="middlealign">Not Ready</td>
		</tr>
	</table>
     </div>
     <div style="width:49.4%; float:right;">
       <table class="appTable" >

		<thead>
			<tr>
				
				<td colspan="10" style="text-align: center;">Update LDAP Authentication from TDS to SDS by SO/ATA</td>
				

			</tr>
			<tr>
				<td>Appliance Name</td>
				<td>Change Status by SO</td>
				<td>Verified by ADM?</td>
				<td>Issue Reported ?</td>
				<td>Final Status</td>
			</tr>
		</thead>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">Int1 - S397AP180</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">Not Started</td>
			<td class="middlealign">No</td>
			<td class="middlealign">Not Ready</td>
		</tr>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">Int2 - S397AP181</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">No</td>
			<td class="middlealign appReady">Ready</td>
		</tr>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">Ext2 - S397AP179</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">In Progress</td>
			<td class="middlealign havingIssue">Yes</td>
			<td class="middlealign">Not Ready</td>
		</tr>
		<tr>
		   <td class="middlealign" style="border-left:1px solid #11afcc;">Ext2 - S397AP178</td>
			<td class="middlealign">Completed</td>
			<td class="middlealign">In Progress</td>
			<td class="middlealign havingIssue">Yes</td>
			<td class="middlealign">Not Ready</td>
		</tr>

	</table>
     </div>
       <br style="clear:both;"/>
      
       
	</div>
	
	<!-- <div class="appFinalStatus" id="dataPowerReady">
		<img alt="Allianz" src="images/ready_round.PNG"> 
		<br/>
		<label>DataPower is ready!!</label>
	</div> -->
</div>
