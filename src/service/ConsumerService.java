package service;

import java.util.List;

import bean.Consumer;

public interface ConsumerService {

	public List<Consumer> findAllconsumers();// ��ѯ���пͻ�

	public void removeUser(Consumer consumer);// ɾ���ͻ�

	public void updateUser(Consumer consumer);// �޸Ŀͻ�

	public Consumer findconsumerById(Integer id);// ��ID��ѯָ���ͻ�
	public Consumer loginUser(Consumer consumer);//����

	public void saveUser(Consumer consumer);//�����û�

	
}
