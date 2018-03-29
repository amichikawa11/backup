package internousdev.sub.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.BuyItemDAO;
import internousdev.sub.dto.BuyItemDTO;

public class GoItemDeleteAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	private List<BuyItemDTO> buyItemDTOList;

	private BuyItemDTO buyItemDTO = new BuyItemDTO();

	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	public String execute() throws SQLException{

		String result;

		buyItemDTOList = (List<BuyItemDTO>) buyItemDAO.getBuyItemInfo();
		session.put("buyItemDTOList", buyItemDTOList);

		session.put("id", buyItemDTO.getId());

		result = SUCCESS;
		return result;

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

	public BuyItemDTO getBuyItemDTO() {
		return buyItemDTO;
	}

	public void setBuyItemDTO(BuyItemDTO buyItemDTO) {
		this.buyItemDTO = buyItemDTO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}



}
