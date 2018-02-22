package internousdev.sub.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.BuyItemDAO;
import internousdev.sub.dto.BuyItemDTO;

public class GoItemListAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private List<BuyItemDTO> buyItemDTOList;

	public String execute(){

		String result;

		if(session.containsKey("id")){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);
			result = SUCCESS;

		}else if(session.containsKey("masterId")){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);
			result = "master";

		}else{

			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);
			result = ERROR;
		}

		return result;

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

}
