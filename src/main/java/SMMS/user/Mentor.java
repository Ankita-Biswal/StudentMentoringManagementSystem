package SMMS.user;

public class Mentor {
private String UserId;
private String Password;
private String Name;

public String getUserId() {
	return UserId;
}

public void setUserId(String userId) {
	this.UserId = userId;
}

public String getPassword() {
	return Password;
}

public void setPassword(String password) {
	this.Password = password;
}


public String getName() {
	return Name;
}

public void setName(String name) {
	this.Name = name;
}

@Override
public String toString() {
	return "Mentor[UserId=" + UserId + ", Password=" +Password+ ",Name="+Name+"]";
}
	
}
