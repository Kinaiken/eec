package models;

public class QuestionOfSectionOne {

	private int id;
    private double number;
    private String question;
    private double score;
    private int correctAnswerId;
//    private int yearOfVariantId;
//    private int lessonId;
//    private int sectionId;
    private Answer[] answer;
//    private int checkedAnswerId;
     
    public QuestionOfSectionOne() {
    	
    }
//    public QuestionOfSectionOne(int id, int number, double score, int yearOfVariantId, int sectionId, int lessonId, String question /*, int correctAnswerId, Answer[] answer */) {
//        this.id = id;
//        this.number = number;
//        this.question = question;
//        this.score = score;
//     //   this.correctAnswerId = correctAnswerId;
////        this.answer = answer;
//    }
//     
    public void setId(int id) {
        this.id = id;
    }
     
    public void setNumber(double number) {
        this.number = number;
    }
    
    public void setQuestion(String question) {
        this.question = question;
    }
     
    public void setScore(double score) {
        this.score = score;
    }
     
    public void setCorrectAnswerId(int correctAnswerId) {
        // TODO Auto-generated method stub
        this.correctAnswerId = correctAnswerId;
    }
     
    public void setAnswer(Answer[] answer) {
        this.answer = answer;
    }
     
//    public void setCheckedAnswerId(int checkedAnswerId) {
//        // TODO Auto-generated method stub
//        this.checkedAnswerId = checkedAnswerId;
//    }
     
    public int getId() {
        return this.id;
    }
     
    public double getNumber() {
        return this.number;
    }
    
    public String getQuestion() {
        return this.question;
    }
     
    public double getScore() {
        return this.score;
    }
     
    public int getCorrectAnswerId() {
        // TODO Auto-generated method stub
        return this.correctAnswerId;
    }
     
    public Answer[] getAnswer() {
        return this.answer;
    }
     
//    public int getCheckedAnswerId() {
//        // TODO Auto-generated method stub
//        return this.checkedAnswerId;
//    }
}
