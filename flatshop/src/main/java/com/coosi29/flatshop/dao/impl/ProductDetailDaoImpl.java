package com.coosi29.flatshop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coosi29.flatshop.dao.ProductDetailDao;
import com.coosi29.flatshop.entity.Product;
import com.coosi29.flatshop.entity.Product_Detail;

@Repository
@Transactional
public class ProductDetailDaoImpl implements ProductDetailDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void insert(Product_Detail productdetail)
	{
		sessionFactory.getCurrentSession().save(productdetail);
	}
	@Override
	public void update(Product_Detail productdetail)
	{
		sessionFactory.getCurrentSession().merge(productdetail);
	}
	@Override
	public void delete(long productdetail) 
	{
		Product_Detail product = findById(productdetail);
		sessionFactory.getCurrentSession().delete(product);
	}
	
	@Override
	public Product_Detail findById(long productdetail)
	{return (Product_Detail) sessionFactory.getCurrentSession().get(Product_Detail.class,productdetail);}
	
	@Override
	public int count() {
		String sql = "SELECT COUNT(pd) FROM Product_Detail pd";
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		long count = (long) query.uniqueResult();
		return (int) count;
	}
	@Override
	public Product_Detail findproductID(long productId,int colorId,int sizeId)
	{
		String sql = "FROM Product_Detail pd  WHERE pd.product.productId = " + productId+" and pd.size.size_id = "+sizeId+" and pd.color.color_id = "+colorId;
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		return (Product_Detail)query.uniqueResult();
	}
	@Override
	public List<Product_Detail> search(long productId)
	{
		String sql = "SELECT pd FROM Product_Detail pd left outer join pd.product p WHERE pd.product.productId = " + productId;
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		return query.list();
	}
	@Override
	public List<Product_Detail> findAllByCategoryId(long productId)
	{
		String sql = "SELECT pd FROM Product_Detail pd WHERE pd.product.productId = " + productId;
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		return query.list();
	}
	
}
