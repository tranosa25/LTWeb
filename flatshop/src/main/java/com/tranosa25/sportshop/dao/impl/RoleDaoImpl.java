package com.tranosa25.sportshop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tranosa25.sportshop.dao.RoleDao;
import com.tranosa25.sportshop.entity.Role;

@Repository
@Transactional
public class RoleDaoImpl implements RoleDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Role> findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Role.class);
		return criteria.list();
	}

}
