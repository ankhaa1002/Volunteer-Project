<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="fragments/head.jsp" />
<body class="fixed-top">
	<jsp:include page="fragments/header.jsp" />
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<jsp:include page="fragments/volunteer_sidebar.jsp" />
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
							${title} <small>manage projects and tasks</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="/home">Home</a> <i
								class="icon-angle-right"></i></li>
							</li>
							<li><a href="#">${title}</a></li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->



				<div class="row-fluid profile">
					<div class="span12">
						<!--BEGIN TABS-->
						<div class="tabbable tabbable-custom tabbable-full-width">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab_1_1" data-toggle="tab">Overview</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane row-fluid active" id="tab_1_1">
									<ul class="unstyled profile-nav span3">
										<li><img src="static/img/profile/profile-img.png" alt="">
									</ul>
									<div class="span9">
										<div class="row-fluid">
											<div class="span8 profile-info">
												<h1>John Doe</h1>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
													elit, sed diam nonummy nibh euismod tincidunt laoreet
													dolore magna aliquam tincidunt erat volutpat laoreet dolore
													magna aliquam tincidunt erat volutpat.</p>
												<p>
													<a href="#">www.mywebsite.com</a>
												</p>
												<ul class="unstyled inline">
													<li><i class="icon-map-marker"></i> Spain</li>
													<li><i class="icon-calendar"></i> 18 Jan 1982</li>
													<li><i class="icon-briefcase"></i> Design</li>
												</ul>
											</div>
											<!--end span8-->
											<div class="span4">
												<div class="portlet sale-summary">
													<div class="portlet-title">
														<h4>Sales Summary</h4>
														<div class="tools">
															<a class="reload" href="javascript:;"></a>
														</div>
													</div>
													<ul class="unstyled">
														<li><span class="sale-info">TODAY SOLD <i
																class="icon-img-up"></i></span> <span class="sale-num">23</span>
														</li>
														<li><span class="sale-info">WEEKLY SALES <i
																class="icon-img-down"></i></span> <span class="sale-num">87</span>
														</li>
														<li><span class="sale-info">TOTAL SOLD</span> <span
															class="sale-num">2377</span></li>
														<li><span class="sale-info">EARNS</span> <span
															class="sale-num">$37.990</span></li>
													</ul>
												</div>
											</div>
											<!--end span4-->
										</div>
										<!--end row-fluid-->
										<div class="tabbable tabbable-custom tabbable-custom-profile">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab_1_11"
													data-toggle="tab">Latest Customers</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="tab_1_11">
													<div class="portlet-body" style="display: block;">
														<table
															class="table table-striped table-bordered table-advance table-hover">
															<thead>
																<tr>
																	<th><i class="icon-briefcase"></i> Company</th>
																	<th class="hidden-phone"><i
																		class="icon-question-sign"></i> Descrition</th>
																	<th><i class="icon-bookmark"></i> Amount</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><a href="#">Pixel Ltd</a></td>
																	<td class="hidden-phone">Server hardware purchase</td>
																	<td>52560.10$ <span
																		class="label label-success label-mini">Paid</span></td>
																	<td><a class="btn mini green-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#"> Smart House </a></td>
																	<td class="hidden-phone">Office furniture purchase</td>
																	<td>5760.00$ <span
																		class="label label-warning label-mini">Pending</span></td>
																	<td><a class="btn mini blue-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#"> FoodMaster Ltd </a></td>
																	<td class="hidden-phone">Company Anual Dinner
																		Catering</td>
																	<td>12400.00$ <span
																		class="label label-success label-mini">Paid</span></td>
																	<td><a class="btn mini blue-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#"> WaterPure Ltd </a></td>
																	<td class="hidden-phone">Payment for Jan 2013</td>
																	<td>610.50$ <span
																		class="label label-danger label-mini">Overdue</span></td>
																	<td><a class="btn mini red-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#">Pixel Ltd</a></td>
																	<td class="hidden-phone">Server hardware purchase</td>
																	<td>52560.10$ <span
																		class="label label-success label-mini">Paid</span></td>
																	<td><a class="btn mini green-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#"> Smart House </a></td>
																	<td class="hidden-phone">Office furniture purchase</td>
																	<td>5760.00$ <span
																		class="label label-warning label-mini">Pending</span></td>
																	<td><a class="btn mini blue-stripe" href="#">View</a></td>
																</tr>
																<tr>
																	<td><a href="#"> FoodMaster Ltd </a></td>
																	<td class="hidden-phone">Company Anual Dinner
																		Catering</td>
																	<td>12400.00$ <span
																		class="label label-success label-mini">Paid</span></td>
																	<td><a class="btn mini blue-stripe" href="#">View</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!--tab-pane-->
											</div>
										</div>
									</div>
									<!--end span9-->
								</div>
								
								<!--end tab-pane-->
							</div>
						</div>
						<!--END TABS-->
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