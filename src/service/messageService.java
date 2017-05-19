package service;


import java.util.List;

import bean.Consumer;
import bean.Message;
import bean.Hotel;
import bean.Order;
public interface messageService {
	public void saveMessage(Message message);

	public List<Message> findAllMessage(Integer Hid);
	public Message findMessageById(Integer id);
	public void removeMessage(Message message);// ɾ��
	public Order findOrderbyid(Integer orderid);
	public Hotel findHotelbyid(Integer hid);
	public void updateOrder(Order order);
	 public Consumer findconsumerbyid(Integer id);
}
