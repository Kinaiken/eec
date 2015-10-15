package models;

public class OptionTwo {
    private int id;
    private String alphabet;
    private String value;
     
    public OptionTwo(int id, String alphabet, String value) {
        this.id = id;
        this.alphabet = alphabet;
        this.value = value;
    }
     
    public int getId() {
        return this.id;
    }
     
    public String getAlphabet() {
        return this.alphabet;
    }
     
    public String getValue() {
        return this.value;
    }
}
