package internousdev.sub.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.ItemHistoryDAO;
import internousdev.sub.dao.ItemHistoryDeleteDAO;
import internousdev.sub.dto.BuyItemDTO;
import internousdev.sub.dto.ItemHistoryDTO;


public class ItemHistoryAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	public ArrayList<ItemHistoryDTO> itemHistoryDTOList = new ArrayList<ItemHistoryDTO>();

	public List<ItemHistoryDTO> itemHistoryList;

	private String deleteFlg;

	private String itemHistoryMessage;


	public String execute() throws SQLException{

		String result;

		//BuyItemActionで作成したlistを使用
		@SuppressWarnings("unchecked")
		List<BuyItemDTO> buyItemDTOList = (List<BuyItemDTO>) session.get("list");

		if(!(session.containsKey("id"))){

			if(session.containsKey("masterId")){

				result = "master";
				return result;
			}

			result = ERROR;
		}

		if(deleteFlg == null){

			if(buyItemDTOList != null){

				for(int i = 0; i < buyItemDTOList.size(); i++){

					String user_master_id = session.get("login_user_id").toString();

					ItemHistoryDAO itemHistoryDAO = new ItemHistoryDAO();

					itemHistoryList = itemHistoryDAO.getItemHistoryInfo(user_master_id);
					session.put("itemHistoryList", itemHistoryList);
				}

			}else{

				String user_master_id = session.get("login_user_id").toString();

				ItemHistoryDAO itemHistoryDAO = new ItemHistoryDAO();

				itemHistoryList = itemHistoryDAO.getItemHistoryInfo(user_master_id);
				session.put("itemHistoryList", itemHistoryList);
			}

			Iterator<ItemHistoryDTO> iterator = itemHistoryList.iterator();
			if(!(iterator.hasNext())){
				itemHistoryList = null;
			}


		}else{

			delete();
		}

		result = SUCCESS;
		return result;

	}


	/**
	 * 履歴削除メソッド
	 */

	public void delete() throws SQLException{

		String user_master_id = session.get("login_user_id").toString();

		ItemHistoryDeleteDAO itemHistoryDeleteDAO = new ItemHistoryDeleteDAO();

		int delete = itemHistoryDeleteDAO.itemHistoryDelete(user_master_id);

		if(delete > 0){

			itemHistoryList = null;
			setItemHistoryMessage("商品履歴を削除しました。");

		}else{

			setItemHistoryMessage("商品履歴の削除に失敗しました。");
		}


	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public ArrayList<ItemHistoryDTO> getItemHistoryDTOList() {
		return itemHistoryDTOList;
	}


	public void setItemHistoryDTOList(ArrayList<ItemHistoryDTO> itemHistoryDTOList) {
		this.itemHistoryDTOList = itemHistoryDTOList;
	}


	public List<ItemHistoryDTO> getItemHistoryList() {
		return itemHistoryList;
	}


	public void setItemHistoryList(List<ItemHistoryDTO> itemHistoryList) {
		this.itemHistoryList = itemHistoryList;
	}


	public String getDeleteFlg() {
		return deleteFlg;
	}


	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}


	public String getItemHistoryMessage() {
		return itemHistoryMessage;
	}


	public void setItemHistoryMessage(String itemHistoryMessage) {
		this.itemHistoryMessage = itemHistoryMessage;
	}



}
