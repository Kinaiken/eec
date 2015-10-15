package user;

public class User {
	private String fName;
	private String lName;
	private String eMail;
	
	public User(String fname, String lname, String email) {
		 this.fName=fname;
		 this.lName=lname;
		 this.eMail=email;
	}
	
	public String getfName() {
		return fName;
	}
	
	public String getlName() {
		return lName;
	}
	
	public String geteMail() {
		return eMail;
	}
}
