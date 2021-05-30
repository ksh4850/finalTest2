package com.finalproj.missingitnow.system.model.dto;

import java.sql.Timestamp;

public class OrderDTO {
	
	private String orderNo;
	private CorpDTO corp;
	private ProductDTO product;
	private UserDTO user;
	private int orderPrice;
	private String dealingStatus;
	private String orderStatus;
	private int quantity;
	private java.sql.Timestamp orderDate;
	
	public OrderDTO() {
		
	}

	public OrderDTO(String orderNo, CorpDTO corp, ProductDTO product, UserDTO user, int orderPrice,
			String dealingStatus, String orderStatus, int quantity, Timestamp orderDate) {
		super();
		this.orderNo = orderNo;
		this.corp = corp;
		this.product = product;
		this.user = user;
		this.orderPrice = orderPrice;
		this.dealingStatus = dealingStatus;
		this.orderStatus = orderStatus;
		this.quantity = quantity;
		this.orderDate = orderDate;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public CorpDTO getCorp() {
		return corp;
	}

	public void setCorp(CorpDTO corp) {
		this.corp = corp;
	}

	public ProductDTO getProduct() {
		return product;
	}

	public void setProduct(ProductDTO product) {
		this.product = product;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getDealingStatus() {
		return dealingStatus;
	}

	public void setDealingStatus(String dealingStatus) {
		this.dealingStatus = dealingStatus;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public java.sql.Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(java.sql.Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", corp=" + corp + ", product=" + product + ", user=" + user
				+ ", orderPrice=" + orderPrice + ", dealingStatus=" + dealingStatus + ", orderStatus=" + orderStatus
				+ ", quantity=" + quantity + ", orderDate=" + orderDate + "]";
	}
	
	
	
	
	

}
