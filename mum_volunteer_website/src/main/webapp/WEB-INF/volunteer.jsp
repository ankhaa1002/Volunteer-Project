<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="fragments/head.jsp" />
<!-- BEGIN BODY -->
<body class="fixed-top">


	<jsp:include page="fragments/header.jsp" />
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<jsp:include page="fragments/volunteer_sidebar1.jsp" />
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>portlet Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<div class="color-panel hidden-phone">
							<div class="color-mode-icons icon-color"></div>
							<div class="color-mode-icons icon-color-close"></div>
							<div class="color-mode">
								<p>THEME COLOR</p>
								<ul class="inline">
									<li class="color-black current color-default"
										data-style="default"></li>
									<li class="color-blue" data-style="blue"></li>
									<li class="color-brown" data-style="brown"></li>
									<li class="color-purple" data-style="purple"></li>
									<li class="color-white color-light" data-style="light"></li>
								</ul>
								<label class="hidden-phone"> <input type="checkbox"
									class="header" checked value="" /> <span
									class="color-mode-label">Fixed Header</span>
								</label>
							</div>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							${title} <small>manage volunteers</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="/project">Home</a> <i
								class="icon-angle-right"></i></li>
							<li><a href="#">${title}</a></li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
						<c:if test="${param.delete eq true}">
					<div class="portlet">
						<div class="alert alert-success">
							<button class="close" data-dismiss="alert"></button>
							<strong>Success!</strong> Volunteer has been successfully deleted
						</div>
					</div>
				</c:if>

				<c:if test="${param.create eq true}">
					<div class="portlet">
						<div class="alert alert-success">
							<button class="close" data-dismiss="alert"></button>
							<strong>Success!</strong> Volunteer has been successfully created
						</div>
					</div>
				</c:if>

				<c:if test="${param.update eq true}">
					<div class="portlet">
						<div class="alert alert-success">
							<button class="close" data-dismiss="alert"></button>
							<strong>Success!</strong> Volunteer has been successfully updated
						</div>
					</div>
				</c:if>
				
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box light-grey">
							<div class="portlet-title">
								<h4>
									<i class="icon-globe"></i>Volunteers
								</h4>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> <a
										href="#portlet-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a> <a
										href="javascript:;" class="remove"></a>
								</div>
							</div>
								<form method="post" action="volunteerDelete">
								<div class="portlet-body">
									<div class="clearfix">
										<div class="btn-group">
											<a href="volunteerAdd" class="btn green"> Add New <i
												class="icon-plus"></i></a>
										</div>
										<div class="btn-group">
											<a id="editVolunteer" href="editVoluteer-" class="btn blue"> Edit <i
												class="icon-pencil"></i></a>
										</div>
										<div class="btn-group">
											<a><button type="submit" class="btn red">
												Delete <i class="icon-minus"></i></button></a>
										</div>
									</div>
									<table class="table table-striped table-bordered table-hover"
										id="sample_1">
										<thead>
											<tr>
												<th style="width: 8px;"><input type="checkbox"
													class="group-checkable"
													data-set="#sample_1 .checkboxes" /></th>
												<th>First Name</th>
												<th class="hidden-480">Middle Name</th>
												<th class="hidden-480">Last Name</th>
												<th class="hidden-480">Telephone Number</th>
												<th class="hidden-480">Date Of Birth</th>
												<th class="hidden-480">Email</th>
											</tr>
										</thead>
										<tbody id="needCheck">
											<c:forEach var="volunteer" items="${volunteers}">
												<tr class="odd gradeX" >
													<td><input type="checkbox" value="${volunteer.userId}"
														name="volunteerId" /></td>
													<td><a							
														href="<c:url value='/editVolunteer-${volunteer.userId}' />">${volunteer.firstName}</a></td>
													<td class="hidden-480">${volunteer.middleName}</td>
													<td class="hidden-480">${volunteer.lastName}</td>
													<td class="center hidden-480">${volunteer.telNumber}</td>
													<td class="hidden-480">${volunteer.DOB}</td>
													<td class="hidden-480">${volunteer.email}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</form>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>

				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<jsp:include page="fragments/footer.jsp" />