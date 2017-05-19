package bean;

public class Consumer {
Integer cid;
String cname;
String password;
String sex;
String phone;
String email;
Integer integration;

public Consumer(){

};
public  String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Integer getCid() {
	return cid;
}
public void setCid(Integer cid) {
	this.cid = cid;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Integer getIntegration() {
	return integration;
}
public void setIntegration(Integer integration) {
	this.integration = integration;
}
}