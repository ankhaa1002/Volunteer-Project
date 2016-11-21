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

				<div class="row-fluid">
					<div class="span4 responsive" data-tablet="span6"
						data-desktop="span4">
						<div class="dashboard-stat blue">
							<div class="visual">
								<i class="icon-folder-open"></i>
							</div>
							<div class="details">
								<div class="number">${projectCount}</div>
								<div class="desc">Projects</div>
							</div>
							<a class="more" href="#"> View more <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
					<div class="span4 responsive" data-tablet="span6"
						data-desktop="span4">
						<div class="dashboard-stat green">
							<div class="visual">
								<i class="icon-tasks"></i>
							</div>
							<div class="details">
								<div class="number">${taskCount}</div>
								<div class="desc">Tasks</div>
							</div>
							<a class="more" href="#"> View more <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
					<div class="span4 responsive" data-tablet="span6  fix-offset"
						data-desktop="span4">
						<div class="dashboard-stat purple">
							<div class="visual">
								<i class="icon-user"></i>
							</div>
							<div class="details">
								<div class="number">${volunteerCount}</div>
								<div class="desc">Volunteers</div>
							</div>
							<a class="more" href="#"> View more <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>

				</div>

				<div class="row-fluid profile">
					<div class="span12">
						<!--BEGIN TABS-->
						<div class="tab-pane active" id="tab_1_4">
							<div class="row-fluid add-portfolio">
								<div class="pull-left">
									<span>Suggested projects for you</span>
								</div>
								<div class="pull-right">
									<a href="#" class="btn icn-only green">See all projects <i
										class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
							<!--end add-portfolio-->
							<div class="row-fluid portfolio-block">
								<div class="span5 portfolio-text">
									<img src="static/img/profile/portfolio/project.png"
										alt="">
									<div class="portfolio-text-info">
										<h4>Metronic - Responsive Template</h4>
										<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
									</div>
								</div>
								<div class="span5" style="overflow: hidden;">
									<div class="portfolio-info">
										Today Sold <span>187</span>
									</div>
									<div class="portfolio-info">
										Total Sold <span>1789</span>
									</div>
									<div class="portfolio-info">
										Earns <span>$37.240</span>
									</div>
								</div>
								<div class="span2 portfolio-btn">
									<a href="#" class="btn bigicn-only"><span>Apply</span></a>
								</div>
							</div>
							<!--end row-fluid-->
							<div class="row-fluid portfolio-block">
								<div class="span5 portfolio-text">
									<img src="static/img/profile/portfolio/project.png" alt="">
									<div class="portfolio-text-info">
										<h4>Metronic - Responsive Template</h4>
										<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
									</div>
								</div>
								<div class="span5">
									<div class="portfolio-info">
										Today Sold <span>24</span>
									</div>
									<div class="portfolio-info">
										Total Sold <span>660</span>
									</div>
									<div class="portfolio-info">
										Earns <span>$7.060</span>
									</div>
								</div>
								<div class="span2 portfolio-btn">
									<a href="#" class="btn bigicn-only"><span>Apply</span></a>
								</div>
							</div>
							<!--end row-fluid-->
							<div class="row-fluid portfolio-block">
								<div class="span5 portfolio-text">
									<img src="static/img/profile/portfolio/project.png" alt="">
									<div class="portfolio-text-info">
										<h4>Metronic - Responsive Template</h4>
										<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
									</div>
								</div>
								<div class="span5" style="overflow: hidden;">
									<div class="portfolio-info">
										Today Sold <span>24</span>
									</div>
									<div class="portfolio-info">
										Total Sold <span>975</span>
									</div>
									<div class="portfolio-info">
										Earns <span>$21.700</span>
									</div>
								</div>
								<div class="span2 portfolio-btn">
									<a href="#" class="btn bigicn-only"><span>Apply</span></a>
								</div>
							</div>
							<!--end row-fluid-->
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