package com.shianghergo.dao;

import java.util.List;

import com.shianghergo.model.CartBean;
import com.shianghergo.model.ItemBean;

public interface CartDao {
	
	void saveToCart(ItemBean ib,Integer member_id);
	List<CartBean> getCartItems(Integer member_id);
	
	CartBean getCartBeanById(Integer cart_id);
	int deleteCartBeanById(Integer cart_id);
}