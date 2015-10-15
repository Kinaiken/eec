package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import java.util.*; 
import models.QuestionOfSectionOne; 
import models.Answer;

import models.MySQL;

/**
 * Servlet implementation class LessonChoice
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("TESTGET");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     response.setHeader("Content-Type", "text/html; charset=\"UTF-8\"");
	     response.setContentType("UTF-8");
		
		PrintWriter out = response.getWriter();	
//		
		out.print("<head>");
		out.print("<meta http-equiv='content-type' content='text/html; charset=UTF-8'>");
		out.print("<title></title>");
		out.print("<link href='public/stylesheets/bootstrap-3.3.4-dist/css/bootstrap.min.css' rel='stylesheet' type='text/css'>"); 
		out.print("<link href='public/stylesheets/main.css' rel='stylesheet' type='text/css'>");
		out.print("<script type='text/javascript' src='public/javascripts/jquery-1.11.1.min.js'></script>");
		out.print("<script type='text/javascript' src='public/stylesheets/bootstrap-3.3.4-dist/js/bootstrap.min.js'></script>");
		out.print("<script type='text/javascript' src='public/javascripts/jquery.dcjqaccordion.2.7.js'></script>");
		out.print("<script type='text/javascript' src='public/javascripts/jquery.scrollTo.min.js'></script>");	
		out.print("<script type='text/javascript' src='public/javascripts/jquery.nicescroll.js'></script>");	
		out.print("<script type='text/javascript' src='public/javascripts/jquery.pulsate.js'></script>");		
		out.print("<script type='text/javascript' src='public/javascripts/main.js'></script>");
		out.print("</head>");		
//		
		
		double totalScore = 0;
		double yourScore = 0;
		
		MySQL mysql = null;
		try {
			mysql = new MySQL();
		} 
		catch (InstantiationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		Connection con = mysql.getConnection();
				
		out.print("<div class='container'>");
		out.print("<div class='container-box'>");
		out.print("<div class='row'>");
		out.print("<div class='col-xs-12'><h4>НЭГДҮГЭЭР ХЭСЭГ. СОНГОХ ДААЛГАВАР</h4></div>");
		out.print("</div>");
		out.print("<blockquote  style='font-size:13px;' class='ng-scope'>");
		out.print("<div  class='ng-binding'>");
		out.print("<p>");
		out.print("<strong>Санамж:</strong></br>"); 
		out.print("1. Таны зөв хариулсан асуултын хариулт ногоон өнгөөр бичигдсэн байгаа. </br>");
		out.print("2. Таны буруу хариулсан асуултын хариулт улаан өнгөөр бичигдсэн ба зөв хариултыг давхар ногоон өнгөөр бичсэн байгаа.");
		out.print("</p>");
		out.print("</div>");
		out.print("</blockquote>");
		
		List<QuestionOfSectionOne> questions = new ArrayList<QuestionOfSectionOne>();		
		String query = "SELECT * FROM _Questions WHERE LessonId = 1 AND YearOfVariantId = 1 AND SectionId = 1;";
		try {
			if (!con.isClosed()) {
				int i = 0;
				
				PreparedStatement statement = con.prepareStatement(query);
				ResultSet rs1 = statement.executeQuery();
	
				while (rs1.next()) {
					QuestionOfSectionOne question = new QuestionOfSectionOne();
					question.setId(rs1.getInt(1));
					question.setQuestion(rs1.getString(7));
					question.setNumber(rs1.getInt(2));
					question.setScore(rs1.getInt(3));
					totalScore += question.getScore();
					query = "SELECT * FROM _CorrectAnswer";
					statement = con.prepareStatement(query);
					ResultSet rs2 = statement.executeQuery(query);
					
					if(rs2.next()) {
						question.setCorrectAnswerId(rs2.getInt(1));
					}
					
					query = "SELECT COUNT(Id) FROM _Answer WHERE QuestionId = ?";
					statement = con.prepareStatement(query);
					statement.setInt(1, question.getId());
					ResultSet rs3 = statement.executeQuery();
					
					if(rs3.next()) {
						int count = rs3.getInt(1);
						Answer[] answer = new Answer[count];
						query = "SELECT * FROM _Answer WHERE QuestionId = ?";
						statement = con.prepareStatement(query);
						statement.setInt(1, question.getId());
						ResultSet rs4 = statement.executeQuery();
						int j = 0;
						
						while(rs4.next()) {
							answer[j] = new Answer(rs4.getInt(1), rs4.getString(2), rs4.getString(3));
							j ++;
						}
						
						question.setAnswer(answer);
					}
					
					out.print("<div class='row'>");
					out.print("<div class='col-md-1' style='background-color: #26A69A;'>");
					out.print("Асуулт " + question.getNumber()); 
					out.print("</div>");
					out.print("<div class='col-md-10'>");	
					out.print("<div class='form-group'>");
					out.print(question.getQuestion());
					out.print("</div>");
					out.print("</div>");
					out.print("<div class='col-md-1' style='background-color: #26A69A;'>");
					out.print(question.getScore() + " Оноо"); 
					out.print("</div>");
					out.print("</div>");
					out.print("<div class='row'>");
					out.print("<div class='col-md-1'>");
					out.print("</div>");
					out.print("<div class='col-md-11'>");
					
					String t = request.getParameter("answer" + i);
					String questionId = null;
					String answerId = null;
					
					if(t != null) {
						String[] parts = t.split("-");
		
						questionId = parts[0]; 
						answerId = parts[1];
					}
					
					Answer[] answer = question.getAnswer();
					query = "SELECT * FROM _CorrectAnswer WHERE QuestionId = ?";
					for(Answer a : answer) {
						statement = con.prepareStatement(query);
						statement.setInt(1, question.getId());
						ResultSet rs5 = statement.executeQuery();
						if(rs5.next()) {
							if(questionId != null && answerId != null) {								
								if(Integer.valueOf(questionId) == question.getId() && Integer.valueOf(answerId) == rs5.getInt(3) && Integer.valueOf(answerId) == a.getId()) {
									yourScore += question.getScore();
									out.print("<div class='radio'>");
									out.print("<label style='color: #26A69A;'><input type='radio' name='answer' value='" + question.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
									out.print("</div>");	
								}
								else {
									if(Integer.valueOf(questionId) == question.getId() && Integer.valueOf(answerId) == a.getId()) {
										out.print("<div class='radio'>");
										out.print("<label style='color: #FF0000;'><input type='radio' name='answer' value='" + question.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
										out.print("</div>");
									}
									else {
										if(Integer.valueOf(questionId) == question.getId() && rs5.getInt(3) == a.getId()) {
											out.print("<div class='radio'>");
											out.print("<label style='color: #26A69A;'><input type='radio' name='answer' value='" + question.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
											out.print("</div>");
										}
										else {
											out.print("<div class='radio'>");
											out.print("<label><input type='radio' name='answer' value='" + question.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
											out.print("</div>");
										}
									}
								}
							}
							else {
								out.print("<div class='radio'>");
								out.print("<label><input type='radio' name='answer' value='" + question.getId() + "-" + a.getId() + "'>" + a.getValue() + "</label>");
								out.print("</div>");
							}
						}
					}
					
					out.print("</div>");
					out.print("</div>");
					out.print("<hr>");
					 
					questions.add(question);
					i ++;
				}
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		out.print("</div>");
		out.print("</div>");
		
		out.print("<div class='footer' style='boder: 1px solid black'>");
		out.print("<div class='row'>");
		out.print("<div class='col-md-12'>"); 
		out.print("<button type='button' class='form-control' data-toggle='modal' data-target='.bs-example-modal-sm' style='color:#ffffff; background: #26A69A; width: 100%; border-radius: 0px;'>ОНОО</button>");
		out.print("</div>");
		out.print("</div>");
		out.print("</div>");
		
		out.print("<div class='modal fade bs-example-modal-sm' tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>");
		out.print("<div class='modal-dialog modal-sm'>");
		out.print("<div class='modal-content'>");
		out.print("<div class='modal-header'>");
		out.print("<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>×</span></button>");
		out.print("<h4 class='modal-title'><b>Хувилбар A</b></h4>");
		out.print("</div>");
		out.print("<div>");
		out.print("<table class='table table-striped m-b-none' style='font-size: 12px;'>");
		out.print("<tbody>");
		out.print("<tr>");
		out.print("<td>Нийт оноо</td>");
		out.print("<td class='ng-binding' style='width: 90px; font-size: 13px;'>");
		out.print(totalScore + " оноо");
		out.print("</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td>Таны авсан оноо</td>");
		out.print("<td class='ng-binding' style='width: 90px; font-weight: bold; font-size: 13px;'>");
		out.print(yourScore + " оноо");
		out.print("</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td>Гүйцэтгэлийн хувь</td>");
		out.print("<td style='width: 90px; font-weight: bold; font-size: 13px;' class='ng-binding'>");
		out.print("0.0%");
		out.print("</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<td>Гүйцэтгэсэн хугацаа</td>");
		out.print("<td style='width: 90px; font-weight: bold; font-size: 13px;'>");
		out.print("<span class='finished_time'>00:00</span>");
		out.print("</td>");
		out.print("</tr>");
		out.print("</tbody>");
		out.print("</table>");
		out.print("</div>");
		out.print("</div>");
		out.print("</div>");
		out.print("</div>");
	}
}
