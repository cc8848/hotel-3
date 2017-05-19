package service.impl;

import java.util.List;

import dao.consumerDao;
import bean.Consumer;
import service.ConsumerService;;

public class ConsumerServiceimpl implements ConsumerService {
	private  consumerDao consumerDao;

	/**
	 * 添加客户
	 */
	@Override
	public void saveUser(Consumer consumer) {
		this.consumerDao.saveUser(consumer);
	}

	/**
	 * 查询所有客户
	 */
	@Override
	public List<Consumer> findAllconsumers() {
		return this.consumerDao.findAllconsumers();
	}

	/**
	 * 删除客户
	 */
	@Override
	public void removeUser(Consumer consumer) {
		this.consumerDao.removeUser(consumer);
	}

	/**
	 * 修改客户
	 */
	@Override
	public void updateUser(Consumer consumer) {
		this.consumerDao.updateUser(consumer);
	}

	/**
	 * 按ID查找指定客户
	 */
	@Override
	public Consumer findconsumerById(Integer id) {
		return this.consumerDao.findconsumerById(id);
	}

	/**
	 * 客户登录
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