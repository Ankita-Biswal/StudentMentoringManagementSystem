package SMMS.user;

public class Feedbackuse {
	private int f_id;
	private String phone_no;
	private String email;
	private String description;
	private String UserId;
	
	public int getF_id() {
		return f_id;
	}

	public void setF_id(int f_id) {
		this.f_id = f_id;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public String getEmail() {
		return email;
	}

	public String getDescription() {
		return description;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	
	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	@Override
	public String toString() {
		return "Feedbackuse [f_id=" + f_id + ", phone_no=" + phone_no + ", email=" + email + ", description="
				+ description + ", UserId=" + UserId + "]";
	}

	


}
