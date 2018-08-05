<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ITUpgrade Dashboard</title>
<script type="text/javascript" src="js/itupgrade.js"></script>
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/jquery.mobile-1.4.5.min.css">
<link rel="stylesheet" href="style/bootstrap.min.css">
</head>
<body>
	<div class="mainDiv">
		<jsp:include page="Header.jsp"></jsp:include>
		<div class="contentDiv">
			<div class="navHeader">
				<button class="tabheader"
					onclick="openPage('Overview', this, 'green')" id="defaultOpen">Overview</button>
				<button class="tabheader" onclick="openPage('Isam', this, 'green')">ISAM + INFRA
					Readiness</button>
				<button class="tabheader"
					onclick="openPage('Datapower', this, 'green')">DataPower + IIB
					</button>
				<button class="tabheader" onclick="openPage('Application', this, 'green')">Application
					Readiness</button>
				<button class="tabheader" onclick="openPage('Testing', this, 'green')">Application
					Testing</button>
				<button class="tabheader" onclick="openPage('Issue', this, 'green')">Issue
					Tracker</button>
				<button class="tabheader"
					onclick="openPage('Contacts', this, 'green')">Team Contacts</button>
			</div>
			<div id="Overview" class="tabcontent">
				<jsp:include page="test.jsp"></jsp:include>
			</div>
			<div id="Application" class="tabcontent">
				<jsp:include page="appReadiness.jsp"></jsp:include>
			</div>
			<div id="Isam" class="tabcontent">
				<jsp:include page="isamReadiness.jsp"></jsp:include>
			</div>
			<div id="Datapower" class="tabcontent">
				<jsp:include page="middlewareActivities.jsp"></jsp:include>
			</div>
			<div id="Testing" class="tabcontent">
				<jsp:include page="appTestingStatus.jsp"></jsp:include>
			</div>
			<div id="Issue" class="tabcontent">
				<jsp:include page="IssueTracker.jsp"></jsp:include>
			</div>
			<div id="Contacts" class="tabcontent">
				<jsp:include page="teamContacts.jsp"></jsp:include>
			</div>

		</div>

		<jsp:include page="Footer.jsp"></jsp:include>
		<script>
			document.getElementById("defaultOpen").click();
			var today = new Date();
			var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-'
					+ today.getDate();
			var time = today.getHours() + ":" + today.getMinutes() + ":"
					+ today.getSeconds();
			var dateTime = date + ' ' + time;
			document.getElementById("timeStamp").innerHTML = dateTime;
			document.getElementById("timeStamp1").innerHTML = dateTime;
		</script>
	</div>
</body>
</html>