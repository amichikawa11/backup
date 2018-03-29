package internousdev.sub.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.BuyItemCompleteDAO;
import internousdev.sub.dto.BuyItemDTO;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();


	@SuppressWarnings("unchecked")
	public String execute()throws SQLException{

		String result = ERROR;

		buyItemDTOList = (ArrayList<BuyItemDTO>) session.get("list");

		for(int i=0; i<buyItemDTOList.size(); i++){

			int stock = buyItemDTOList.get(i).getItemStock();

			int count = buyItemDTOList.get(i).getCount();

			int id = buyItemDTOList.get(i).getId();

			int total_price = buyItemDTOList.get(i).getTotalPrice();

			int item_stock = stock - count;
			System.out.println(item_stock);

			if(item_stock < 0){

				result = ERROR;

			}else{

				BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();

				buyItemCompleteDAO.buyItemInfo(id, total_price, count, session.get("login_user_id").toString(), buyItemDTOList.get(i).getPay(), item_stock);

				result = SUCCESS;

			}

		}return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
