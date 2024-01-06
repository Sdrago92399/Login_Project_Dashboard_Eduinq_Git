package my_profile;

public class ResumePojo {
	
	private int id;
	private String name;
    private String email;
    private String phone;
    private String address;
    private String education;
    private String skills;
    private String experience;
	public ResumePojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResumePojo(int id, String name, String email, String phone, String address, String education, String skills,
			String experience) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.education = education;
		this.skills = skills;
		this.experience = experience;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	@Override
	public String toString() {
		return "ResumePojo [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", address="
				+ address + ", education=" + education + ", skills=" + skills + ", experience=" + experience + "]";
	}
    
    
	
	
    
}
