package Servlet_Anu;

public class StudentEntity {
	private int id;
	private String name;
	private String email;
	private String password;
	private String companyName;
	private String phoneNumber;
	public StudentEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StudentEntity(int id, String name, String email, String password, String companyName, String phoneNumber) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.companyName = companyName;
		this.phoneNumber = phoneNumber;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Override
	public String toString() {
		return "StudentEntity [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", companyName=" + companyName + ", phoneNumber=" + phoneNumber + "]";
	}
	
	

}
