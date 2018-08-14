package cn.hlyc.dao.bank;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.hlyc.domain.bankCardInfo.Bank;

public interface IBankDAO extends JpaRepository<Bank, Integer>{

}
