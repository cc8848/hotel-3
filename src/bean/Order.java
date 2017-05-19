package bean;
import java.security.Timestamp;

import bean.room;
import bean.Consumer;

public class Order {
	private Integer orderid;// ���
	private room room;// ����
	private Consumer consumer;// �ͻ�
	private String truename=null;
  double price;
  private Integer integration=0;
	 public Integer getIntegration() {
	return integration;
}

public void setIntegration(Integer integration) {
	this.integration = integration;
}

	public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

	Integer status;
	 java.sql.Timestamp orderInDate;
	 java.sql.Timestamp orderOutDate;
    String phone;
	
   public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}


    

	


	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	

	 public String getTruename() {
			return truename;
		}

		public void setTruename(String truename) {
			this.truename = truename;
		}

	

	

	
	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public room getRoom() {
		return room;
	}

	public void setRoom(room room) {
		this.room = room;
	}

	public Consumer getConsumer() {
		return consumer;
	}

	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}

    public java.sql.Timestamp getOrderInDate() {
		return orderInDate;
	}

	public void setOrderInDate(java.sql.Timestamp orderInDate2) {
		this.orderInDate = orderInDate2;
	}

	public java.sql.Timestamp getOrderOutDate() {
		return orderOutDate;
	}

	public void setOrderOutDate(java.sql.Timestamp orderOutDate2) {
		this.orderOutDate = orderOutDate2;
	}



	
}