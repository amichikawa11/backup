package internousdev.sub.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.ItemInsertDAO;
import internousdev.sub.dto.ItemInsertDTO;


public class ItemInsertCompleteAction extends ActionSupport{

	private String itemName;

	private int itemPrice;

	private int itemStock;

	private String itemCategory;

	private String itemDescription;

	private String imageFilePath;

	private String releaseDate;


	public String execute() throws SQLException{

		ItemInsertDTO itemInsertDTO = new ItemInsertDTO();

		ItemInsertDAO itemInsertDAO = new ItemInsertDAO();


		String result;

		itemInsertDTO = itemInsertDAO.itemInsertInfo(itemName, itemPrice, itemStock, itemCategory, itemDescription, imageFilePath, releaseDate);

		result = SUCCESS;

		return result;

		}


	public String getItemName() {
		return itemName;
	}


	public void setItemName(String itemName) {
		this.itemName = itemName;
	}


	public int getItemPrice() {
		return itemPrice;
	}


	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}


	public int getItemStock() {
		return itemStock;
	}


	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}


	public String getItemCategory() {
		return itemCategory;
	}


	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}


	public String getItemDescription() {
		return itemDescription;
	}


	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}


	public String getImageFilePath() {
		return imageFilePath;
	}


	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}


	public String getReleaseDate() {
		return releaseDate;
	}


	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}


	}


