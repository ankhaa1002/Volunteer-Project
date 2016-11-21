<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar nav-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->
	<ul>
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<c:set var="url"
			value="${requestScope['javax.servlet.forward.request_uri']}" />

		<li
			class="start <%if (pageContext.findAttribute("url").equals("/home")) {%>
		active
		<%}%>"><a
			href="/home"> <i class="icon-bar-chart"></i> <span class="title">Dashboard</span>
		</a></li>
		<li class="start <%if (pageContext.findAttribute("url").equals("/profile")) {%>
		active
		<%}%>"><a href="/profile"> <i class="icon-user"></i>
				<span class="title">My information</span>
		</a></li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->