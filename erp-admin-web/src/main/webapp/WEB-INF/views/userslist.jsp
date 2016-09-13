<%@ include file="masters/head.jsp"%>

<div id="wrapper" ng-controller="ModuleController as ctrl">
	<%@ include file="masters/sidebar.jsp"%>
	
	<div id="page-wrapper" style="height: 100%">
		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header" >
						Dashboard <small>Statistics Overview</small>
					</h1>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-dashboard"></i> Dashboard
						</li>
					</ol>
					<button  ng-click="ctrl.loginAttendance()">ATE</button>
				</div>
			</div>
		</div>
	</div>

</div>

<%@ include file="masters/footer.jsp"%>
<script src="<c:url value='/scripts/js/app.js' />"></script>
<script src="<c:url value='/scripts/js/service/module_service.js' />"></script>
<script src="<c:url value='/scripts/js/controller/module_controller.js' />"></script>