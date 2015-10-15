<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>ЭЕШ Нэвтрэх</title>
	<link href="public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
	<link href="public/stylesheets/login.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript" src="public/javascripts/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="public/stylesheets/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="public/javascripts/main.js"></script>
</head>
<body>
	<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="login-container">
	</div>
	<div class="login-form-container col-md-12">
		<center>
			<!-- <img src="public/images/sisi-logo-black.png"> -->
			<h2>ЭЕШ Бэлдэх програм</h2>

			<input type="text" id="nick" class="log-text-form" placeholder="Хэрэглэгчийн нэр" required autofocus></br>
	        <input type="password" id="pswd" class="log-text-form" placeholder="Нууц үг" required></br>
	     
	      	<input class="log-btn-form" type="submit" id="submit" onclick="return login()" value="Нэвтрэх"></br>
	      	<button class="log-btn-form" data-toggle="modal" data-target=".registerModal">Бүртгүүлэх</button></br>
			<a href="#" style="color:#FFF">Та нууц үгээ мартсан уу?</a>	
		</center>
	</div>
	 <!-- Modal -->
	<div class="modal fade registerModal" role="dialog" aria-hidden="true">
	    <div class="modal-dialog">
	      <!-- Modal content-->
	      	<div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Бүртгүүлэх</h4>
		        </div>
		        <div class="modal-body">
		          		<label>Овог:</label></br>
						<input type="text" value="" class="input-xlarge"></br>
						<label>Нэр:</label></br>
						<input type="text" value="" class="input-xlarge"></br>
						<label>И-Мэйл</label></br>
						<input type="text" value="" class="input-xlarge"></br>
						<label>Нууц үг:</label></br>
						<input type="text" value="" class="input-xlarge"></br></br>
						<div>
							<button class="btn btn-success">Бүртгүүлэх</button>
						</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Хаах</button>
		        </div>
     		</div>
     	</div>
     </div>

	
</body>
</html>