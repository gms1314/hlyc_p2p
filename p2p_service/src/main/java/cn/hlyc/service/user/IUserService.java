package cn.hlyc.service.user;

import cn.hlyc.domain.user.UserModel;

public interface IUserService {

	UserModel findByUsername(String username);

	UserModel findByPhone(String phone);

	boolean addUser(UserModel user);

	UserModel login(String username, String pwd);

	UserModel findById(int userId);

	void updatePhoneStatus(String phone, int i);

	void updateRealName(String realName, String identity, int i);

	void addEmail(String email, int parseInt);

	void updateEmailStatus(int parseInt);

}
