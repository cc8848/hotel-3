package service.impl;

import java.util.List;

import dao.consumerDao;
import bean.Consumer;
import service.ConsumerService;;

public class ConsumerServiceimpl implements ConsumerService {
	private  consumerDao consumerDao;

	/**
	 * ��ӿͻ�
	 */
	@Override
	public void saveUser(Consumer consumer) {
		this.consumerDao.saveUser(consumer);
	}

	/**
	 * ��ѯ���пͻ�
	 */
	@Override
	public List<Consumer> findAllconsumers() {
		return this.consumerDao.findAllconsumers();
	}

	/**
	 * ɾ���ͻ�
	 */
	@Override
	public void removeUser(Consumer consumer) {
		this.consumerDao.removeUser(consumer);
	}

	/**
	 * �޸Ŀͻ�
	 */
	@Override
	public void updateUser(Consumer consumer) {
		this.consumerDao.updateUser(consumer);
	}

	/**
	 * ��ID����ָ���ͻ�
	 */
	@Override
	public Consumer findconsumerById(Integer id) {
		return this.consumerDao.findconsumerById(id);
	}

	/**
	 * �ͻ���¼
	 */
	@Override
	public Consumer loginUser(Consumer consumer) {
		return this.consumerDao.loginUser(consumer);
	}

	public consumerDao getConsumerDao() {
		return consumerDao;
	}

	public void setConsumerDao(consumerDao consumerDao) {
		this.consumerDao = consumerDao;
	}

	
	

}