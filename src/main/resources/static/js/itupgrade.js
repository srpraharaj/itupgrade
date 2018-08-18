function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tabheader");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}


/*var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
var dateTime = date+' '+time;
document.getElementById("timeStamp").innerHTML = dateTime;*/
function generateDashboard(){
	getReadinessActivities();
	getVerificationStatus();
	getIssueStatus();
	getOngoingActivities();
}

function getReadinessActivities(){
	$.ajax({
		url:"api/dashboard/readiness",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,value){
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: none;' id =' " + key+ "'>" + value.activityName+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.completedTask+"/"+value.totalTask+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#readinessBody').html(items.join("")); 
		}	
	});
 }
 
function getVerificationStatus(){
	$.ajax({
		url:"api/dashboard/verification",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,testing){
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: 1px solid #11afcc;' id =' " + key+ "'>" + testing.activityName+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + testing.appTesting+"/"+testing.totalTask+"</td>");
    			if(testing.businessTesting < 0 || testing.signOff <0){
    				
    				items.push("<td class='middlealign' id =' " + key+ "'>" + "N/A" +"</td>");
        			items.push("<td class='middlealign' id =' " + key+ "'>" + "N/A" +"</td>");
    			}else{
    				
    				items.push("<td class='middlealign' id =' " + key+ "'>" + testing.businessTesting+"/"+testing.totalTask+"</td>");
        			items.push("<td class='middlealign' id =' " + key+ "'>" + testing.signOff+"/"+testing.totalTask+"</td>");
    			}
    			
    			
    			items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" + testing.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#verificationBody').html(items.join("")); 
		}	
	});
 }
 
function getIssueStatus(){
	$.ajax({
		url:"api/dashboard/issuestatus",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,issue){
				//alert(issue.totalIssue);
				items.push("<tr>");
				items.push("<td class='middlealign' style='border-left: none;' id =' " + key+ "'>" + issue.totalIssue+"</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.infraIssue + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.appIssue + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.pending + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.resolved + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + issue.progress+" %"+"</td>");
    			items.push("</tr>");

				});
			$('#issueStatusBody').html(items.join("")); 
		}	
	});
 }

function getOngoingActivities(){
	$.ajax({
		url:"api/dashboard/ongoingactivities",
		type:"GET",
		dataType: 'json',
		success:function(data){
			var items =[];
			//console.log(data);
			$.each(data.data,function(key,value){
				if (value.status != null && value.status.toLowerCase() == "issue") {
					
					items.push("<tr style='background-color: #FFC7CE;'>");
				} else {	
					items.push("<tr>");
				} 
				items.push("<td class='middlealign' style='border-left: 1px solid #11afcc;' id =' " + key+ "'>" + value.startTime+ "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.activityDetails + "</td>");
    			items.push("<td class='middlealign' id =' " + key+ "'>" + value.endTime + "</td>");
    			items.push("<td class='middlealign' style='border-right: none;' id =' " + key+ "'>" +value.status+ "</td>");
    			items.push("</tr>");

				});
			$('#activitiesBody').html(items.join("")); 
		}	
	});
 }

