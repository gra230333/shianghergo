package com.shianghergo.dao;

import java.util.List;

import com.shianghergo.model.ItemBean;

public interface ItemDao {
	
	List<ItemBean> getAllItems();
	ItemBean getItemById(Integer id);
	void deleteItem(Integer id);
}