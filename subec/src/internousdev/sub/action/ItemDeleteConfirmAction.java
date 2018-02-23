package internousdev.sub.action;

import java.sql.SQLException;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.List;
import java.util.Map;

import internousdev.sub.dto.BuyItemDTO;
import internousdev.sub.dao.ItemDeleteDAO;

public class ItemDeleteConfirmAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	public String execute() throws SQLException{

		@SuppressWarnings("unchecked")
		List<String> deleteName = (List<String>) session.get("deleteName");

		for(int i = 0; i < deleteName.size(); i++){

			@SuppressWarnings("unchecked")
			List<BuyItemDTO> list = (List<BuyItemDTO>) session.get("itemDeleteList");

			String itemName = list.get(i).getItemName();

			ItemDeleteDAO itemDeleteDAO = new ItemDeleteDAO();
			itemDeleteDAO.itemDeleteInfo(itemName);
		}

		String result = SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
