package com.internousdev.myec.dto;

/**
 * 商品の情報
 */

public class BuyItemDTO {
	private int id;

	private int itemId;

	private String category;

	private String itemName;

	private String itemPrice;

	private String description;

	private String image_file_path;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
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
	public String getImage_file_path() {
		return image_file_path;
	}
	public void setImage_file_path(String image_file_path) {
		this.image_file_path = image_file_path;
	}



}
