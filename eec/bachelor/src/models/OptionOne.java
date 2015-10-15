package models;

public class OptionOne {
    private int id;
    private int number;
    private String value;
     
    public OptionOne(int id, int number, String value) {
        this.id = id;
        this.number = number;
        this.value = value;
    }
     
    public int getId() {
        return this.id;
    }
     
    public int getNumber() {
        return this.number;
    }
     
    public String getValue() {
        return this.value;
    }
}
