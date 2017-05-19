package service;

import java.util.List;

import bean.Consumer;

public interface ConsumerService {

	public List<Consumer> findAllconsumers();// 查询所有客户

	public void removeUser(Consumer consumer);// 删除客户

	public void updateUser(Consumer consumer);// 修改客户

	public Consumer findconsumerById(Integer id);// 按ID查询指定客户
	public Consumer loginUser(Consumer consumer);//登入

	public void saveUser(Consumer consumer);//保存用户

	
}
