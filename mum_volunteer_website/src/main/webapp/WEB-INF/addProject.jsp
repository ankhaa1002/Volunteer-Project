<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="fragments/head.jsp" />
<body class="fixed-top">
	<jsp:include page="fragments/header.jsp" />
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<jsp:include page="fragments/sidebar.jsp" />
		<div class="page-content" data-height="1007">
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
								<label class="hidden-phone">
									<div class="checker" id="uniform-undefined">
										<span class="checked"><input type="checkbox"
											class="header" checked="" value="" style="opacity: 0;"></span>
									</div> <span class="color-mode-label">Fixed Header</span>
								</label>
							</div>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->
						<h3 class="page-title">${title}</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="/project">Home</a> <span
								class="icon-angle-right"></span></li>
							<li><a href="#">${title}</a>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="tabbable tabbable-custom boxless">

							<div class="tab-content">
								<div class="tab-pane active" id="tab_1">
									<div class="portlet box blue">
										<div class="portlet-title">
											<h4>
												<i class="icon-reorder"></i>New project
											</h4>
											<div class="tools">
												<a href="javascript:;" class="collapse"></a> <a
													href="#portlet-config" data-toggle="modal" class="config"></a>
												<a href="javascript:;" class="reload"></a> <a
													href="javascript:;" class="remove"></a>
											</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form:form method="post" modelAttribute="project"
												action="projectAdd" class="horizontal-form">
												<fieldset>
													<legend>Project Info</legend>
													<div class="row-fluid">
														<div class="span6 ">
															<div class="control-group">
																<label class="control-label" for="firstName">Title</label>
																<div class="controls">
																	<form:input type="text" path="title"
																		class="m-wrap span12" placeholder="Title" />
																	<form:errors path="title" />
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="span6 ">
															<div class="control-group">
																<label class="control-label" for="firstName">Location
																	/Address/</label>
																<div class="controls">
																	<form:input id="location" type="text" path="location"
																		class="m-wrap span12" placeholder="Location" />
																	<form:errors path="location" />
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!--/row-->
													<div class="row-fluid">
														<div class="span6 ">
															<div class="control-group">
																<label class="control-label">Start date</label>
																<div class="controls">
																	<form:input id="start_date" path="startDate"
																		type="text" class="m-wrap span12"
																		placeholder="dd/mm/yyyy" />
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="span6 ">
															<div class="control-group">
																<label class="control-label">End Date</label>
																<div class="controls">
																	<form:input id="end_date" path="endDate" type="text"
																		class="m-wrap span12" placeholder="dd/mm/yyyy" />
																</div>
															</div>
														</div>
														<!--/span-->
													</div>

													<div class="row-fluid">
														<div class="span6 ">
															<div class="control-group">
																<label class="control-label">Description</label>
																<div class="controls">
																	<form:textarea rows="5" cols="30" path="description"
																		type="text" class="m-wrap span12" />
																</div>
															</div>
														</div>

														<div class="span6 ">
															<div class="control-group">
																<label class="control-label" for="lastName">Required
																	skills</label>
																<div class="controls">
																	<form:select id="skills" multiple="true"
																		style="width:100%;" path="skills">
																		<form:options items="${project.allSkils}"
																			itemValue="id" itemLabel="name" />
																	</form:select>
																</div>
															</div>
														</div>
													</div>
													</fieldset>
													<fieldset>
													<legend>Tasks</legend>
													<div class="portlet-body">
														<div class="clearfix">
															<div class="btn-group">
																<button id="sample_editable_1_new" class="btn green">
																	Add New <i class="icon-plus"></i>
																</button>
															</div>
															
														</div>
														<table
															class="table table-striped table-hover table-bordered"
															id="sample_editable_1">
															<thead>
																<tr>
																	<th>Title</th>
																	<th>Description</th>
																	<th>Start date</th>
																	<th>End date</th>
																	<th>Edit</th>
																	<th>Delete</th>
																</tr>
															</thead>
															<tbody>
																
															</tbody>
														</table>
													</div>

													<!--/row-->
												</fieldset>


												<div class="form-actions">
													<button type="submit" class="btn blue">
														<i class="icon-ok"></i> Save
													</button>
													<a href="/project" class="btn">Cancel</a>
												</div>
											</form:form>
											<!-- END FORM-->
										</div>
									</div>
								</div>



								<!-- END FORM-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END PAGE CONTENT-->
	</div>
	<!-- END PAGE CONTAINER-->
	</div>
	</div>
	<jsp:include page="fragments/footer.jsp" />