package com.tranosa25.sportshop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tranosa25.sportshop.dao.ItemDao;
import com.tranosa25.sportshop.entity.Item;

@Repository
@Transactional
public class ItemDaoImpl implements ItemDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void insert(Item item) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(item);
	}

	@Override
	public void update(Item item) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(long itemId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Item> findAll(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> findByOrderId(long orderId) {
		String sql = "SELECT i FROM Item i LEFT OUTER JOIN i.detail pd WHERE i.order.orderId = " + orderId;
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		return query.list();
	}

}
