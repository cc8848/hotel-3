package service.impl;
import java.util.List;

import dao.OrderDao;
import service.messageService;
import dao.messageDao;
import bean.Consumer;
import bean.Message;
import bean.Hotel;
import bean.Order;
public class messageServiceimpl implements messageService {
	private messageDao messageDao;
	private OrderDao orderDao;
	public messageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(messageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public void saveMessage(Message message) {
		this.messageDao.saveMessage(message);
	}

	@Override
	public List<Message> findAllMessage(Integer Hid) {
		return this.messageDao.findAllMessage(Hid);
	}
	@Override
	public Message findMessageById(Integer id) {
		return this.messageDao.findMessageById(id);
	}
	@Override
	public void removeMessage(Message message) {
		this.messageDao.removeMessage(message);
		
	}
	@Override
	public Order findOrderbyid(Integer orderid){
	return	this.messageDao.findOrderbyid(orderid);
		
	}
	@Override
	public Hotel findHotelbyid(Integer hid){
		return this.messageDao.findHotelbyid(hid);
	}

	public void updateOrder(Order order) {
		 this.messageDao.updateOrder(order);
	}

	@Override
	public Consumer findconsumerbyid(Integer id) {
		return this.messageDao.findconsumerbyid(id);
	}
}
