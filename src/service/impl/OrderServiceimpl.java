package service.impl;

import java.util.List;

import dao.OrderDao;
import bean.Order;
import bean.Consumer;
import service.OrderService;
import bean.hotel_worker;
public class OrderServiceimpl implements OrderService {
	private OrderDao orderDao;

	/**
	 * ��Ӷ���
	 */
	@Override
	public void saveOrder(Order order) {
		this.orderDao.saveOrder(order);
	}

	/**
	 * ��ѯ���ж���
	 */
	@Override
	public List<Order> findAllOrder(hotel_worker worker) {
		return this.orderDao.findAllOrder(worker);
	}

	/**
	 * ɾ��
	 */
	@Override
	public void removeOrder(Order order) {
		this.orderDao.removeOrder(order);
	}

	/**
	 * �޸Ķ���
	 */
	@Override
	public void updateOrder(Order order) {
		this.orderDao.updateOrder(order);
	}

	/**
	 * ��ID����ָ������
	 */
	@Override
	public Order findOrderById(Integer id) {
		return this.orderDao.findOrderById(id);
	}

	/**
	 * ����ָ���ͻ��Ķ���
	 */
	@Override
	public List<Order> getConsumerOrder(Consumer consumer) {
		return this.orderDao.getConsumerOrder(consumer);
	}

	/**
	 * ���ͻ���ʶ�ͷ���Ų���ָ������
	 */
	@Override
	public Order findOrderByConsumeridAndRoomid(Integer cid, Integer roomid) {
		return this.orderDao.findOrderByConsumeridAndRoomid(cid, roomid);
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	

}