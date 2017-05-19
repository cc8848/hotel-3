package bean;

public class Admin {
Integer adminid;
String aname;
String password;
public String getAname() {
	return aname;
}
public void setAname(String aname) {
	this.aname = aname;
}

public Admin(){};


public Integer getAdminid() {
	return adminid;
}
public void setAdminid(Integer adminid) {
	this.adminid = adminid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}
