package com.internousdev.myec.dto;

/**
 * 商品の情報
 */

public class BuyItemDTO {
	private int id;

	private String category;

	private String itemName;

	private String itemPrice;

	private String description;

	private String imageFilePath;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageFilePath() {
		return imageFilePath;
	}
	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}



}
