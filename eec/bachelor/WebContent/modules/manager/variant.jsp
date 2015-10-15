<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="models.MySQL"%>
<!DOCTYPE html>
<html>
<head>
	<link href="../../public/stylesheets/main.css" rel="stylesheet" type="text/css">

	<link href="../../public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../../public/javascripts/menu.js"></script>
	<script type="text/javascript" src="../../public/javascripts/jquery-1.11.1.min.js"></script>
</head>
<body>
	
		<div class="wrapper">
			
				<div class="row content-menu">
					<% 
						MySQL mysql = new MySQL();
					 	//String query = "SELECT COUNT(*) FROM _YearOfVariant WHERE LessonId = " + ;
					%>
					<div class="col-md-3">
						<ul>
							<li class="active">
								<a href="">A Сорилго</a>
							</li>
						</ul>
					</div>
					
					<div class="col-md-3">
						<ul>
							<li>
								<a href="">B Сорилго</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul>
							<li>
								<a href="">C Сорилго</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul>
							<li>
								<a href="">D Сорилго</a>
							</li>
						</ul>
					</div>
				</div>
				
				<iframe src="test.jsp" id="homeframe" frameborder="0" width="100%" height="100%" scrolling="no">
				</iframe>
			
		</div>
</body>
</html>