package com.shianghergo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shianghergo.dao.CartDao;
import com.shianghergo.model.CartBean;
import com.shianghergo.model.ItemBean;
import com.shianghergo.service.CartService;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	CartDao dao;

	@Override
	@Transactional
	public void saveToCart(ItemBean ib,Long member_id) {
		dao.saveToCart(ib,member_id);
	}

	@Override
	@Transactional
	public List<CartBean> getCartItems(Long member_id) {
		return dao.getCartItems(member_id);
	}
	
	@Override
	@Transactional
	public CartBean getCartBeanById(Long cart_id) {
		return dao.getCartBeanById(cart_id);
	}
	
	@Override
	@Transactional
	public CartBean updateCartBeanById(Long cart_id,String type) {
		CartBean cb = dao.getCartBeanById(cart_id);
		if(type.equals("1")) {
			cb.setAmount(cb.getAmount()+1);
		}else if(type.equals("2")) {
			cb.setAmount(cb.getAmount()-1);
		}
		return cb;
	}
	
	@Override
	@Transactional
	public int deleteCartBeanById(Long cart_id) {
		int reduce = dao.deleteCartBeanById(cart_id);
		return reduce;
	}
	
}
