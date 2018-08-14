package cn.hlyc.service.userAccount;

import cn.hlyc.domain.userAccount.UserAccountModel;

public interface IUserAccountService {

	void add(int id);

	UserAccountModel findByUserId(int userId);

}
