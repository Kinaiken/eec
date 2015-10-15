package models;

public class Answer {
	 	private int id = 0;
	    private String value = null;
	    private String alphabet;
	     
	    public Answer(int id, String value, String alphabet) {
	        this.id = id;
	        this.value = value;
	        this.alphabet = alphabet;
	    }
	     
	    public int getId() {
	        return this.id;
	    }
	     
	    public String getValue() {
	        return this.value;
	    }
	     
	    public String getAlphabet() {
	        return this.alphabet;
	    }
}
