package dao.impl;

import java.util.List;




import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import dao.consumerDao;
import bean.Consumer;

public class consumerDaoimpl extends HibernateDaoSupport implements consumerDao {
	
	@Override
	public void saveUser(Consumer consumer) {
		
		this.getHibernateTemplate().save(consumer);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Consumer> findAllconsumers() {
		String hql = "from Consumer c order by c.cid desc";
		List<Consumer> list = (List<Consumer>) this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void removeUser(Consumer consumer) {
		this.getHibernateTemplate().delete(consumer);
	}

	@Override
	public void updateUser(Consumer consumer) {
		this.getHibernateTemplate().update(consumer);
	}

	@Override
	public Consumer findconsumerById(Integer id) {
		Consumer consumer = (Consumer) this.getHibernateTemplate().get(Consumer.class, id);
		return consumer;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Consumer loginUser(Consumer consumer) {
		 String hql = "from Consumer c where c.cname = ? and c.password = ?";
		List<Consumer> list = (List<Consumer>) this.getHibernateTemplate().find(hql,
				new Object[] { consumer.getCname(), consumer.getPassword()/*"tk","123"*/ });
		if(list.size() > 0){
		
			return list.get(0);
		}
		return null; 
	
	}
	
}