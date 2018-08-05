<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
    function getDataFromAPI(){
    	$.ajax({
    		
    		url:"api/appdetails/byid/{appId}",
    		type:"GET",
    		dataType: 'json',
    		success:function(data){
    			console.log(data);
    			var items =[];
    			$.each(data,function(key,appDetails){
    				

					});
    			/* $('#appReadinessBody').html(items.join(""));  */
    		}	
    	});
    }
</script>

<body>
	<div class="appDetailsTable">
	 
	 <%-- <c:forEach var="appDetails" items="${appDetails}">
	 
	 
	 </c:forEach> --%>
		<div class="appDetails1">
			<div class="appDetails1-one" id="appCode">App Code</div>
			<div class="appDetails1-one" id="appStatus">[Current Status]</div>
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