package service;

import bean.Admin;

public interface adminService {
	public void saveAdmin(Admin admin);// ��ӹ���Ա
	public Admin loginAdmin(Admin admin);
public Admin findAdminbyid(Integer id);
}
