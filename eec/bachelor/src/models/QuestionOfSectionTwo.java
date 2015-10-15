package models;

import java.util.HashMap;

public class QuestionOfSectionTwo {
	private int id;
	private Double number;
	private String question;
	private double score;
	private OptionOne[] optionOne;
	private OptionTwo[] optionTwo;

	private HashMap<Integer, Integer> selectedAnswer;
	private HashMap<Integer, Integer> correctAnswer;
	    
	public QuestionOfSectionTwo(int id, Double number, String question, double score, OptionOne[] optionOne, OptionTwo[] optionTwo, HashMap<Integer, Integer> correctAnswer) {
        this.id = id;
        this.number = number;
        this.question = question;
        this.score = score;
        this.optionOne = optionOne;
        this.optionTwo = optionTwo;
        this.correctAnswer = correctAnswer;
    }
     
    public void setId(int id) {
        this.id = id;
    }
     
    public void setNumber(Double number) {
        this.number = number;
    }
     
    public void setQuestion(String question) {
        this.question = question;
    }
     
    public void setScore(double score) {
        this.score = score;
    }
     
    public void setOptionOne(OptionOne[] optionOne) {
        this.optionOne = optionOne;
    }
     
    public void setOptionTwo(OptionTwo[] optionTwo) {
        this.optionTwo = optionTwo;
    }
     
    public void setSelectedAnswer(HashMap<Integer, Integer> selectedAnswer) {
        this.selectedAnswer = selectedAnswer;
    }
     
    public void setCorrectAnswer(HashMap<Integer, Integer> correctAnswer) {
        this.correctAnswer = correctAnswer;
    }
     
    public int getId() {
        return this.id;
    }
     
    public Double getNumber() {
        return this.number;
    }
     
    public String getQuestion() {
        return this.question;
    }
     
    public double getScore() {
        return this.score;
    }
     
    public OptionOne[] getOptionOne() {
        return this.optionOne;
    }
     
    public OptionTwo[] getOptionTwo() {
        return this.optionTwo;
    }
    
    public HashMap<Integer, Integer> getSelectedAnswer() {
        return this.selectedAnswer;
    }
     
    public HashMap<Integer, Integer> getCorrectAnswer() {
        return this.correctAnswer;
    }
}
