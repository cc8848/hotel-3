
package dao;
import java.util.List;

import bean.Admin;

/**
 * ����Ա����Ľӿ�
 * 
 * @author ��
 * 
 */
public interface adminDao {
	public void saveAdmin(Admin admin);// ��ӹ���Ա
	public Admin loginAdmin(Admin admin);
    public Admin findAdminbyid(Integer id);
}

