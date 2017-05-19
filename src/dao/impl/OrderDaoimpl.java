package dao.impl;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.OrderDao;
import bean.Order;
import bean.Consumer;
import bean.hotel_worker;
public class OrderDaoimpl extends HibernateDaoSupport implements OrderDao {

	@Override
	public void saveOrder(Order order) {
		this.getHibernateTemplate().save(order);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> findAllOrder(hotel_worker worker) {
		
		String hql = "from Order o where o.room.hotels.hid= ?";
		List<Order> list = (List<Order>) this.getHibernateTemplate().find(hql,worker.getHotels().getHid());
		System.out.println("orderdaoimpl赋值成功");	
		return list;
		
	}

	@Override
	public void removeOrder(Order order) {
		this.getHibernateTemplate().delete(order);
	}

	@Override
	public void updateOrder(Order order) {
		this.getHibernateTemplate().update(order);
	}

	@Override
	public Order findOrderById(Integer id) {
		Order order = (Order) this.getHibernateTemplate().get(Order.class, id);
		return order;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getConsumerOrder(Consumer consuemr) {
		String hql = "from Order o where o.consumer.cid = ?";
		List<Order> list = (List<Order>) this.getHibernateTemplate().find(hql,
				consuemr.getCid());
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Order findOrderByConsumeridAndRoomid(Integer cid, Integer roomid) {
		String hql = "from Order o where o.consumer.cid = ? and o.room.id = ?";
		List<Order> list = (List<Order>) this.getHibernateTemplate().find(hql,
				new Object[] { cid, roomid });
		System.out.println(list.get(0).getRoom().getPrice());
		return list == null ? null : list.get(0);
	}

	
}