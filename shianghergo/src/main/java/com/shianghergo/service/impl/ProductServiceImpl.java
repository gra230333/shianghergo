package com.shianghergo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shianghergo.dao.ProductDao;
import com.shianghergo.model.ItemBean;
import com.shianghergo.model.StoreBean;
import com.shianghergo.service.ProductService;


@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao dao;

	@Transactional
	@Override
	public List<ItemBean> getAllProducts() {
		return dao.getAllProducts();
	}

	@Transactional
	@Override
	public ItemBean getProductById(int productId) {
		return dao.getProductById(productId);
	}

	@Transactional
	@Override
	public void addProduct(ItemBean product) {
		dao.addProduct(product);
	}

	@Transactional
	@Override
	public StoreBean getStoreById(int store_id) {
		return dao.getStoreById(store_id);
	}

	@Transactional
	@Override
	public List<StoreBean> getStoreList() {
		return dao.getStoreList();
	}

	@Transactional
	@Override
	public List<String> getAllCategories() {
		return dao.getAllCategories();
	}

	@Transactional
	@Override
	public void updateItem(ItemBean product) {
		ItemBean oldItemBean = dao.getProductById(product.getId());
		oldItemBean.setName(product.getName());
		oldItemBean.setCategory(product.getCategory());
		oldItemBean.setReserve(product.getReserve());
		oldItemBean.setPrice(product.getPrice());
		oldItemBean.setDetail(product.getDetail());
		oldItemBean.setFileName(product.getFileName());
		oldItemBean.setCoverImage(product.getCoverImage());
		if (product.getId() != null)
			dao.updateItem(oldItemBean);
		else
			System.out.println("product.id = null !!");
	}

	@Transactional
	@Override
	public int deleteProduct(int id) {
		int n = 0;
		n = dao.deleteProduct(id);
		return n;
	}
}