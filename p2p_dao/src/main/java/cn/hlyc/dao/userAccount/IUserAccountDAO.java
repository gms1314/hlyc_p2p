package cn.hlyc.dao.userAccount;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.hlyc.domain.userAccount.UserAccountModel;

public interface IUserAccountDAO extends JpaRepository<UserAccountModel, Integer> {

	public UserAccountModel findByUserId(int userId);
}
