package com.tranosa25.sportshop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tranosa25.sportshop.dao.ColorDao;
import com.tranosa25.sportshop.entity.Product_Color;

@Transactional
@Repository
public class ColorDaoImpl implements ColorDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product_Color> findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Product_Color.class);
		return criteria.list();
	}
	
	@Override
	public List<Product_Color> findproductID(long productId) {
		String sql = "SELECT pd.color FROM Product_Detail pd left outer join pd.product p WHERE p.productId = " + productId;
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		return query.list();
	}

}
