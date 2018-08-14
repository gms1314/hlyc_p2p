package cn.hlyc.dao.product;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.hlyc.domain.product.Product;

public interface IProductDAO extends JpaRepository<Product, Long>{

}
