<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Admin</title>
	</head>
	
	<body>
		<h3>Welcome to ${userName }</h3>
		<div>
			<table>
				<tr><td><button onclick="window.location.href='AdminSheduledProgramlist.do';" ><b>Scheduled Program</b></button></td></tr>
				<tr><td><button onclick="alert('hello you')" ><b>Offered Program</b></button></td></tr>
				<tr><td><button onclick="Admin/Applicants" ><b>Applicant Details</b></button></td></tr>
				<tr><td><button onclick="Admin/AddOffered" ><b>Add program Offered</b></button> </td> </tr>
				<tr><td><button onclick="Admin/DeleteOffered" > <b>Delete Program Offered</b></button></td></tr>
				<tr><td><button onclick="Admin/AddSchedule" ><b>Schedule A Program</b></button></td></tr>
				<tr><td><button onclick="Admin/DeleteSchedule" ><b>Delete Scheduled Program </b></button></td></tr>
				<tr><td><button onclick="Admin/" ><b>Search Applicants</b></button></td></tr>
				<tr><td><button onclick="Admin/" ><b>Generate Confirmed Students List</b></button></td></tr>
			</table>
		</div>
		<div>
			<c:if test="${scheduleList ne null }">
				<c:forEach items="${scheduleList }" var="scheduledPrg">
					<h4>${scheduledPrg.scheduledProgramId } ${scheduledPrg.programName }</h4>
				</c:forEach>
			</c:if>
		</div>
	</body>
</html>