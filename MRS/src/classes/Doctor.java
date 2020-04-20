package classes;

public class Doctor extends User {
	
	private String expertise;
	
	public Doctor(String username, String password, String name, int age, String gender, String address, String phone, String email, String expertise) {
		super(username, password, name, age, gender, address, phone, email);
		this.expertise = expertise;
	}
	
	public String getExpertise() {
		return expertise;
	}
	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}

}
