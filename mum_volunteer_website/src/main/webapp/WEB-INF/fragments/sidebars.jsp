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
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		<c:set var="realUrl" value="/project"/>
		
		<li class="start 
		<% if( pageContext.findAttribute("url").toString().contains("project") || pageContext.findAttribute("url").toString().contains("Project")) { %>
		active
		<% } %>
		">
			<a href="javascript:;"> <i class="icon-book"></i> <span
				class="title">Project</span><span class="arrow"></span>
		</a>
			
			
			<ul class="sub-menu">
				<li class="<% if( pageContext.findAttribute("url").equals("/projectAdd")) { %>
		active
		<% } %>"><a href="/projectAdd"> <i class="icon-folder-close"></i>
						Add new project 
				</a></li>
				<li class="<% if( pageContext.findAttribute("url").equals("/project")) { %>
		active
		<% } %>"><a href="/project"> <i
						class="icon-tasks"></i> 
						Project list
				</a></li>
			</ul>
		</li>
		<li
			class="<c:if test="${requestScope['javax.servlet.forward.request_uri']} == '/volunteer'">active</c:if>"><a
			href="javascript:;"> <i class="icon-cogs"></i> <span
				class="title">Volunteer</span></span>
		</a></li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->