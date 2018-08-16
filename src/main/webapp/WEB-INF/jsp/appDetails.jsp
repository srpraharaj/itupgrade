<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Test Page</title>
<script type="text/javascript" src="js/itupgrade.js"></script>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/jquery.mobile-1.4.5.min.css">
<link rel="stylesheet" href="style/bootstrap.min.css">
</head>
<script>
    function getDataFromAPI(){
    	  var appId = <%=request.getParameter("appid")%>;

    	  document.getElementById('appStatus').innerHTML=<%=request.getParameter("appStatus")%>;




    var urlString = "api/appdetails/byid/" + appId;

    	$.ajax({


    	    		url:urlString,
    	    		type:"GET",
    	    		dataType: 'json',
    	    		success:function(data){
    	    			//console.log(data);
    	    			var items =[];
    	    			$.each(data,function(key,appDetails){
    	    			//	alert(data.appCode);

    	    		document.getElementById('appCode').innerHTML=data.appCode;

    	    		document.getElementById('appType').innerHTML=data.appType;
    	    		document.getElementById('appName').innerHTML=data.appName;
    	    		document.getElementById('appVendor').innerHTML=data.appVendor;
    	    		document.getElementById('businessArea').innerHTML=data.businessArea;
    	    		document.getElementById('primarySupportName').innerHTML=data.primarySupportName;
    	    		document.getElementById('primarySupportMobile').innerHTML=data.primarySupportMobile;
    	    		document.getElementById('secondarySupportName').innerHTML=data.secondarySupportName;
    	    		document.getElementById('secondarySupportMobile').innerHTML=data.secondarySupportMobile;
    	    		document.getElementById('deliveryManagerName').innerHTML=data.deliveryManagerName;
    	document.getElementById('deliveryManagerMobile').innerHTML=data.deliveryManagerMobile;
    	document.getElementById('appSME').innerHTML=data.appSME;
    	document.getElementById('appASM').innerHTML=data.appASM;
    	document.getElementById('upstreamAppList').innerHTML=data.upstreamAppList;
    	document.getElementById('downstreamAppList').innerHTML=data.downstreamAppList;
    	document.getElementById('prodAppServers').innerHTML=data.prodAppServers;
    	document.getElementById('prodIHSServers').innerHTML=data.prodIHSServers;
    	document.getElementById('wasJVMPort').innerHTML=data.wasJVMName +'/'+data.wasPortNo;
    	document.getElementById('prodAppURL').innerHTML=data.prodAppURL;
    	document.getElementById('prodDbDetails').innerHTML=data.prodDbDetails;
    	document.getElementById('dataSourceName').innerHTML=data.dataSourceName;
    	document.getElementById('prodMqDetails').innerHTML=data.prodMqDetails;








    	    		//console.log(data);

    						});
    	    			/* $('#appReadinessBody').html(items.join(""));  */
    	    		}	
    	    	});


    }
</script>

<body onload="getDataFromAPI();">
	<div class="appDetailsTable">

	 <%-- <c:forEach var="appDetails" items="${appDetails}">


	 </c:forEach> --%>
		<div class="appDetails1">
			<div class="appDetails1-one" id="appCode"></div>
			<div class="appDetails1-one" id="appStatus"></div>
			<div class="appDetails1-one" style="text-align:right;padding-right:10px;">
				<a href="javascript:window.close();">Close</a>
			</div>
		</div>
		<div class="appDetails2"><b>Application Details</b></div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application Type:</div>
			<div class="appDetails3-two" id="appType"></div>
			<div class="appDetails3-one">Application Name:</div>
			<div class="appDetails3-two" id="appName"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application Vendor:</div>
			<div class="appDetails3-two" id="appVendor"></div>
			<div class="appDetails3-one">Business Area:</div>
			<div class="appDetails3-two" id="businessArea"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Primary Contact:</div>
			<div class="appDetails3-two" id="primarySupportName"></div>
			<div class="appDetails3-one">Primary Contact Mobile:</div>
			<div class="appDetails3-two" id="primarySupportMobile"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Secondary Contact:</div>
			<div class="appDetails3-two" id="secondarySupportName"></div>
			<div class="appDetails3-one">Secondary Contact Mobile:</div>
			<div class="appDetails3-two" id="secondarySupportMobile"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Delivery Manager:</div>
			<div class="appDetails3-two"id="deliveryManagerName"></div>
			<div class="appDetails3-one">Delivery Manager Contact:</div>
			<div class="appDetails3-two" id="deliveryManagerMobile"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application SE/BA:</div>
			<div class="appDetails3-two" id="appSME"></div>
			<div class="appDetails3-one">Application SE/BA Contact:</div>
			<div class="appDetails3-two" id="appSME"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application Manager:</div>
			<div class="appDetails3-two"id="appASM"></div>
			<div class="appDetails3-one">Application Manager Contact:</div>
			<div class="appDetails3-two"id="appASM"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Upstream Applications:</div>
			<div class="appDetails3-two" id="upstreamAppList"></div>
			<div class="appDetails3-one">Downstream Applications:</div>
			<div class="appDetails3-two" id="downstreamAppList"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application Server:</div>
			<div class="appDetails3-two" id="prodAppServers"></div>
			<div class="appDetails3-one">Web/IHS Server:</div>
			<div class="appDetails3-two" id="prodIHSServers"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Application JVM/Port:</div>
			<div class="appDetails3-two" id="wasJVMPort"></div>
			<div class="appDetails3-one">Application DNS:</div>
			<div class="appDetails3-two" id="prodAppURL"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">Database Server:</div>
			<div class="appDetails3-two" id="prodDbDetails"></div>
			<div class="appDetails3-one">DataSource:</div>
			<div class="appDetails3-two" id="dataSourceName"></div>
		</div>
		<div class="appDetails3">
			<div class="appDetails3-one">MQ Server:</div>
			<div class="appDetails3-two" id="prodMqDetails"></div>
			<div class="appDetails3-one">MQ Queue Manager:</div>
			<div class="appDetails3-two" id="prodMqDetails"></div>
		</div>
        <div class="appDetails3">
			<div class="appDetails3-one">MQ-Request Queue:</div>
			<div class="appDetails3-two" id="prodMqDetails"></div>
			<div class="appDetails3-one">MQ-Reply Queue:</div>
			<div class="appDetails3-two" id="prodMqDetails"></div>
		</div>
	</div>
</body>