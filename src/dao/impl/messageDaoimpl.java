package dao.impl;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;






import dao.messageDao;
import bean.Consumer;
import bean.Message;
import bean.Hotel;
import bean.Order
;public class messageDaoimpl extends HibernateDaoSupport implements messageDao{
	@Override
	public void saveMessage(Message message){
		this.getHibernateTemplate().save(message);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Message> findAllMessage(Integer Hid) {
		String hql = "from Message m where m.hotelid= ?";
		System.out.println("这里也没order的事");
		List<Message> list = (List<Message>) this.getHibernateTemplate().find(hql,Hid);
		System.out.println("findmessagebyid成功");	
		return list;
	}
	@Override
	public Message findMessageById(Integer id) {
		Message message = (Message) this.getHibernateTemplate().get(Message.class, id);
		return message;
	}
	@Override
	public void removeMessage(Message message) {
		this.getHibernateTemplate().delete(message);
		
	}
	@Override 
	public Order findOrderbyid(Integer orderid){
		Order order = (Order) this.getHibernateTemplate().get(Order.class, orderid);
		return order;
	}
	@Override 
	public Hotel findHotelbyid(Integer hid){
		Hotel hotel = (Hotel) this.getHibernateTemplate().get(Hotel.class, hid);
		return hotel;
	}
	
	public void updateOrder(Order order) {
		this.getHibernateTemplate().update(order);
		
	}
	@Override
	public Consumer findconsumerbyid(Integer id) {
		Consumer consumer = (Consumer) this.getHibernateTemplate().get(Consumer.class, id);
		return consumer;
	}
}
