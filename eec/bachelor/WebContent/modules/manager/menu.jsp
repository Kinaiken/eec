<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>ЭЕШ</title>
	<link href="../../public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
	<link href="../../public/stylesheets/main.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript" src="../../public/javascripts/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../../public/stylesheets/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../public/javascripts/jquery.dcjqaccordion.2.7.js"></script>
	<script type="text/javascript" src="../../public/javascripts/jquery.scrollTo.min.js"></script>	
	<script type="text/javascript" src="../../public/javascripts/jquery.nicescroll.js"></script>	
	<script type="text/javascript" src="../../public/javascripts/jquery.pulsate.js"></script>		
	<script type="text/javascript" src="../../public/javascripts/main.js"></script>
	<script type="text/javascript" src="../../public/javascripts/menu.js"></script>
	
</head>
<body>
	<div id="container">
		<div class="navbar navbar-default navbar-fixed-top white-bg " id="navbar">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="sidebar-toggle-box">
					<div data-original-title="Цэс хураангуйлах" data-placement="right" class="fa fa-bars tooltips">
					</div>
				</div>
			</div>
			
			
			<ul class="nav navbar-nav navbar-right">
		        <div class="pull-right navbar-text">
				  
				</div>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-user
glyphicon gly"></span><span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">Хувийн мэдээлэл</a></li>
		            <li><a href="#">Нууц үг солих</a></li>
		            <li><a href="#">Гарах</a></li>
		            <li class="divider"></li>
		            <li><a href="#">Separated link</a></li>
		          </ul>
		        </li>
		        <li><a href="#"></a></li>
	      	</ul>
			
			
			<!-- <ul class="nav navbar-top-links navbar-right">
					<li class="dropdown open">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expaned="true">
							<i class="fa fa-user fa-fw"></i>
							<i class="fa fa-caret-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-user">
							<li>
								<a href="#">
									<i class="fa fa-user fa-fw"></i>
									user profile
								</a>
							</li>
						</ul>
					</li>
				</ul>  -->
			<div class="eeshp">
				<p class="navbar-text"><h5>ЭЛСЭЛТИЙН ЕРӨНХИЙ ШАЛГАЛТАНД БЭЛТГЭХ ПРОГРАМ</h5></p>
			</div>
		</div>
		<aside>
			<div id="sidebar" class="nav-collapse" tabindex="5000" style="overflow: hidden; outline: none; margin-left: 0px;">
				<ul class="sidebar-menu" id="nav-accordion" style="display: block;">
		  			<li id="159" class="active">
		  				<a href="#" onclick="linkClicked('profile.jsp')">Хэрэглэгчийн мэдээлэл</a>
		  			</li>
					<li class="sub-menu dcjq-parent-li" id="406">
						<a href="javascript:;" class="dcjq-parent">Нийгэм<span class="dcjq-icon"></span></a>
						<ul class="sub" style="display: none;">
							<li>
								<a href="#2014" onclick="linkClicked('variant.jsp')">2014</a>
							</li>
							<li>
								<a href="#2013" onclick="linkClicked('variant.jsp')">2013</a>
							</li>
							<li>
								<a href="#2012" onclick="linkClicked('variant.jsp')">2012</a>
							</li>
							<li>
								<a href="#2011" onclick="linkClicked('variant.jsp')">2011</a>
							</li>
							<li>
								<a href="#2010" onclick="linkClicked('variant.jsp')">2010</a>
							</li>
							<li>
								<a href="#2009" onclick="linkClicked('variant.jsp')">2009</a>
							</li>
							<li>
								<a href="#2008" onclick="linkClicked('variant.jsp')">2008</a>
							</li>
							<li>
								<a href="#2007" onclick="linkClicked('variant.jsp')">2007</a>
							</li>
							<li>
								<a href="#2006" onclick="linkClicked('variant.jsp')">2006</a>
							</li>
						</ul>
					</li>
					<li class="sub-menu dcjq-parent-li" id="406">
						<a href="javascript:;" class="dcjq-parent">Англи хэл<span class="dcjq-icon"></span></a>
						<ul class="sub" style="display: none;">
							<li>
								<a href="#2014" onclick="linkClicked('variant.jsp')">2014</a>
							</li>
							<li>
								<a href="#2013" onclick="linkClicked('variant.jsp')">2013</a>
							</li>
							<li>
								<a href="#2012" onclick="linkClicked('variant.jsp')">2012</a>
							</li>
							<li>
								<a href="#2011" onclick="linkClicked('variant.jsp')">2011</a>
							</li>
							<li>
								<a href="#2010" onclick="linkClicked('variant.jsp')">2010</a>
							</li>
							<li>
								<a href="#2009" onclick="linkClicked('variant.jsp')">2009</a>
							</li>
							<li>
								<a href="#2008" onclick="linkClicked('variant.jsp')">2008</a>
							</li>
							<li>
								<a href="#2007" onclick="linkClicked('variant.jsp')">2007</a>
							</li>
							<li>
								<a href="#2006" onclick="linkClicked('variant.jsp')">2006</a>
							</li>
						</ul>
					</li>
					<li class="sub-menu dcjq-parent-li" id="406">
						<a href="javascript:;" class="dcjq-parent">Орос хэл<span class="dcjq-icon"></span></a>
						<ul class="sub" style="display: none;">
							<li>
								<a href="#2014" onclick="linkClicked('variant.jsp')">2014</a>
							</li>
							<li>
								<a href="#2013" onclick="linkClicked('variant.jsp')">2013</a>
							</li>
							<li>
								<a href="#2012" onclick="linkClicked('variant.jsp')">2012</a>
							</li>
							<li>
								<a href="#2011" onclick="linkClicked('variant.jsp')">2011</a>
							</li>
							<li>
								<a href="#2010" onclick="linkClicked('variant.jsp')">2010</a>
							</li>
							<li>
								<a href="#2009" onclick="linkClicked('variant.jsp')">2009</a>
							</li>
							<li>
								<a href="#2008" onclick="linkClicked('variant.jsp')">2008</a>
							</li>
							<li>
								<a href="#2007" onclick="linkClicked('variant.jsp')">2007</a>
							</li>
							<li>
								<a href="#2006" onclick="linkClicked('variant.jsp')">2006</a>
							</li>
						</ul>
					</li>										
				</ul>
			</div>
		</aside>
		<div id="main-content" style="margin-left: 220px;">
			<div class="wrapper">
				<iframe src="profile.jsp" id="homeframe" frameborder="0" width="100%" height="100%" scrolling="no">
				</iframe>
			</div>
		</div>
	</div>
</body>
</html>