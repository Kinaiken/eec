<%@ page contentType="text/html" pageEncoding="UTF-8" import="models.MySQL"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>ЭЕШ</title>
	<link href="../../public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
	<link href="../../public/stylesheets/profile.css" rel="stylesheet" type="text/css">
	
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


	<div class="wrapper">
		 <div class="span11" id="content">
		
			<div class="row-fluid">
				<div class="span6 content-panels content-tab1" style="border-top-color: #f9b256">
					<button type="button" class="pull-right btn btn-warning btn-sm">
						<i class="glyphicon glyphicon-edit"></i>
							Edit
					</button>
					<h5> Хэрэглэгчийн мэдээлэл</h5>
					<div class="basic-info">
						<ul>
							<li>
								<span><b>Овог:</b></span>
							</li>
							<li>
								<span><b>Нэр:</b></span>
							</li>
							<li>
								<span><b>Хүйс:</b></span>
							</li>
							<li>
								<span><b>Нас:</b></span>
							</li>
							<li>
								<span><b>Аймаг:</b></span>
							</li>
						</ul>
						<ul>
							<li>
								<span><b>Ганзориг</b></span>
							</li>
							<li>
								<span><b>Сэргэлэнбаатар</b></span>
							</li>
							<li>
								<span><b>Эр</b></span>
							</li>
							<li>
								<span><b>18</b></span>
							</li>
							<li>
								<span><b>Баянхонгор</b></span>
							</li>
						</ul>
					</div>
				</div>
				<div class="span6 content-panels content-tab1" style="border-top-color: #8cc474">
					<button type="button" class="pull-right btn btn-success btn-sm">
						<i class="glyphicon glyphicon-edit"></i>
							Edit
					</button>
					<h5> Статик мэдээлэл</h5>
					<table class="table table-bordered">
						<theed>
							<tr>
								<th>Хичээл</th>
							</tr>
							<tr>
								<th>Өгсөн байдал</th>
							</tr>
							<tr>
								<th>Оноо</th>
							</tr>
						</theed>
					</table>
				</div>
			</div>
		</div>
	</div>  
<!-- 	<div class="col-md-12">
    	<section class="panel">
        	<div class="panel-body">
       			<div class="panel">
       				<p class="panel-heading">Хэрэглэгчийн мэдээлэл</p>
       			</div>
       			<br>
       			 <form action="../../LessonChoice" method="get">
	       			<div class="panel">
	       				<p class="panel-heading">Хичээл сонголт эхлүүлэх</p>
	       				<p>Эхлэх хугацаа</p>
	       				<input type="text" class="form-control">
	       				<p>Дуусах хугацаа</p>
	       				<input type="submit" class="btn btn-info btn-lg btn-block" value="Эхлүүлэх">
	       			</div>	
	       		</form> 
       			<br>
           	</div>	
       	</section>
    </div>		 -->
</body>
</html>