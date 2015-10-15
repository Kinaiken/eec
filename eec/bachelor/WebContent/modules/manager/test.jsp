<%@page import="java.sql.SQLException"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.*, models.*, models.MySQL"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<link href="../../public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
	
	<link href="../../public/stylesheets/main.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript" src="../../public/javascripts/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../../public/stylesheets/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../public/javascripts/jquery.dcjqaccordion.2.7.js"></script>
	<script type="text/javascript" src="../../public/javascripts/jquery.scrollTo.min.js"></script>	
	<script type="text/javascript" src="../../public/javascripts/jquery.nicescroll.js"></script>	
	<script type="text/javascript" src="../../public/javascripts/jquery.pulsate.js"></script>		
	<script type="text/javascript" src="../../public/javascripts/main.js"></script>
	
	
</head>
<body>
<form action="../../Test" method="post">
<jsp:useBean id="question1" class="models.QuestionOfSectionOne">		
		
	<div class="container">
		<div class="container-box">
		<div class="row">
			<div class="col-xs-12"><h4>НЭГДҮГЭЭР ХЭСЭГ. СОНГОХ ДААЛГАВАР</h4></div>
		</div>
		
		<blockquote  style="font-size:13px;" class="ng-scope">
			<div  class="ng-binding">
				<p>
					<strong>Санамж:</strong></br> 
					1. Асуулт даалгавар бүрийг дуустал, анхааралтай  уншиж гүйцэтгээрэй.</br>
					2. Сонгох даалгавраас зөвхөн нэгийг сонгоорой.
				</p>
			</div>
		</blockquote>
		
		<%
			MySQL mysql = new MySQL();
			String query = "SELECT * FROM _Questions WHERE LessonId = 1 AND YearOfVariantId = 1 AND SectionId = 1;";
			
			List<QuestionOfSectionOne> questions = new ArrayList<QuestionOfSectionOne>();		
			Connection con = mysql.getConnection();
			
			if (!con.isClosed()) {
				try {
					PreparedStatement statement = con.prepareStatement(query);
					ResultSet rs1 = statement.executeQuery();
					int j = 0;
					while (rs1.next()) {			
						question1.setId(rs1.getInt(1));
						question1.setNumber(rs1.getDouble(2));
						question1.setQuestion(rs1.getString(7));
						question1.setScore(rs1.getInt(3));
						query = "SELECT * FROM _CorrectAnswer";
						statement = con.prepareStatement(query);
						ResultSet rs2 = statement.executeQuery(query);
						if(rs2.next()) {
							question1.setCorrectAnswerId(rs2.getInt(1));
						}
						query = "SELECT COUNT(Id) FROM _Answer WHERE QuestionId = ?";
						statement = con.prepareStatement(query);
						statement.setInt(1, question1.getId());
						ResultSet rs3 = statement.executeQuery();
						if(rs3.next()) {
							int count = rs3.getInt(1);
							Answer[] answer = new Answer[count];
							query = "SELECT * FROM _Answer WHERE QuestionId = ?";
							statement = con.prepareStatement(query);
							statement.setInt(1, question1.getId());
							ResultSet rs4 = statement.executeQuery();
							int i = 0;
							while(rs4.next()) {
								answer[i] = new Answer(rs4.getInt(1), rs4.getString(2), rs4.getString(3));
								i ++;
							}
							question1.setAnswer(answer);
						}
						
		%>

		<div class="row">
			<div class="col-md-1" style="background-color: #26A69A;">
			Асуулт  <% out.println(question1.getNumber()); %> 
			</div>
			<div class="col-md-10">	
				<div class="form-group">
					<% out.println(question1.getQuestion()); %>
			  	</div>
			</div>
			<div class="col-md-1" style="background-color: #26A69A;">
			  <% out.println(question1.getScore()); %>Оноо 
			</div>
		</div>
		<div class="row">
			<div class="col-md-1">
			</div>
			<div class="col-md-11">
		  		<%
					Answer[] answer = question1.getAnswer();
				  	for(Answer a : answer) {
						out.print("<div class='radio'>");
				  		out.print("<label><input type='radio' name='answer" + j + "'value='" + question1.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
				  		out.print("</div>");
					}
				%>
			</div>
		</div>
		<hr>
		<% 
						j ++;
						questions.add(question1);
					}
				}
				catch(SQLException e) {
					e.printStackTrace();
				}
			}
		%>
		</div>		
	</div>
	</jsp:useBean>
	<div class="row">
		<div class="col-xs-12"><h4>ХОЁРДУГААР ХЭСЭГ. ХАРГАЛЗУУЛАХ ДААЛГАВАР</h4></div>
	</div>
	<jsp:useBean id="question2" class="models.QuestionOfSectionTwo">			
	<%
		MySQL mysql = new MySQL();
		String query = "SELECT * FROM _Questions WHERE LessonId = 1 AND YearOfVariantId = 1 AND SectionId = 2;";
		
		List<QuestionOfSectionTwo> questionsOfSectionTwo = new ArrayList<QuestionOfSectionTwo>();		
		Connection con = mysql.getConnection();
		
		try {
			PreparedStatement statement = con.prepareStatement(query);
			ResultSet rs1 = statement.executeQuery();
			int j = 0;
			while (rs1.next()) {			
				question2.setId(rs1.getInt(1));
				question2.setNumber(rs1.getDouble(2));
				question2.setScore(rs1.getInt(3));
				question2.setQuestion(rs1.getString(7));		
				query = "SELECT COUNT(Id) FROM _OptionOne WHERE QuestionId = ?";
				statement = con.prepareStatement(query);
				statement.setInt(1, question2.getId());
				ResultSet rs2 = statement.executeQuery();
				if(rs2.next()) {
					int count = rs2.getInt(1);
					OptionOne[] optionOne = new OptionOne[count];
					query = "SELECT * FROM _OptionOne WHERE QuestionId = ?";
					statement = con.prepareStatement(query);
					statement.setInt(1, question2.getId());
					
					ResultSet rs3 = statement.executeQuery(query);
					int i = 0;
					while(rs3.next()) {
						optionOne[i] = new OptionOne(rs3.getInt(1), rs3.getInt(2), rs3.getString(3));
						i ++;
					}
					question2.setOptionOne(optionOne);
					
					query = "SELECT COUNT(Id) FROM _OptionTwo WHERE QuestionId = ?";
					statement = con.prepareStatement(query);
					statement.setInt(1, question2.getId());
					
					rs3 = statement.executeQuery(query);
					if(rs3.next()) {
						count = rs3.getInt(1);
						
						OptionTwo[] optionTwo = new OptionTwo[count];
						query = "SELECT * FROM _OptionTwo WHERE QuestionId = ?";
						statement = con.prepareStatement(query);
						statement.setInt(1, question2.getId());
						ResultSet rs4 = statement.executeQuery(query);
						i = 0;
						while(rs4.next()) {
							optionTwo[i] = new OptionTwo(rs4.getInt(1), rs4.getString(2), rs4.getString(3));
							i ++;
						}
						question2.setOptionTwo(optionTwo);
					}
				}
	%>
	<div class="row">
		<div class="col-md-1" style="background-color: #26A69A;">
		Асуулт  <% out.println(question2.getNumber()); %> 
		</div>
		<div class="col-md-10">	
			<div class="form-group">
				<% out.println(question2.getQuestion()); %>
		  	</div>
		</div>
		<div class="col-md-1" style="background-color: #26A69A;">
		  <% out.println(question2.getScore()); %>Оноо 
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-11">
	  		<%
				OptionOne[] optionOne = question2.getOptionOne();
	  			for(OptionOne a : optionOne) {
					out.print("<div class='radio'>");
					out.print("<label>" + a.getNumber() + "</label>");
					OptionTwo[] optionTwo = question2.getOptionTwo();
					for(OptionTwo b : optionTwo) {
			  			out.print("<option name='optionOne" + j + "'value='" + question2.getId() + "-" + b.getId() + "'>" + b.getValue() + "</option>");
					}
			  		out.print("</div>");
				}
			%>
		</div>
	</div>
	<hr>
	<%
			j ++;
			questionsOfSectionTwo.add(question2);
		}
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
	%>
	<div class="footer" style="boder: 1px solid black">
		<div class="row">
			<div class="col-md-12"> 
				<input type="submit" class="form-control" style="color:#ffffff; background: #26A69A; width: 100%; border-radius: 0px;" value="ДУУСГАХ">
			</div>	
		</div>
	</div>
	
	</jsp:useBean>
</form>
</body>
</html>