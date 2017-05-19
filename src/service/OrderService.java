package service;

import java.util.List;

import bean.Order;
import bean.Consumer;
import bean.hotel_worker;
/**
 * ��������Ľӿ�
 * 
 * @author ��
 * 
 */
public interface OrderService {
	public void saveOrder(Order order);// ��Ӷ���

	public List<Order> findAllOrder(hotel_worker worker);// ��ѯ���ж���

	public void removeOrder(Order order);// ɾ��

	public void updateOrder(Order order);// �޸Ķ���

	public Order findOrderById(Integer id);// ��ID��ѯָ������

	public List<Order> getConsumerOrder(Consumer consumer);// ���ͻ�����ָ���û��Ķ���

	public Order findOrderByConsumeridAndRoomid(Integer consumerid, Integer roomid);// ���ͻ���ʶ�ͷ���Ų��Ҷ���

	
}
