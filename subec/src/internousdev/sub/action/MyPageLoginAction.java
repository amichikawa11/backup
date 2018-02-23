package internousdev.sub.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import internousdev.sub.dao.BuyItemDAO;
import internousdev.sub.dao.LoginDAO;
import internousdev.sub.dto.BuyItemDTO;
import internousdev.sub.dto.LoginDTO;

public class MyPageLoginAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	private String loginUserId;

	private String loginPassword;

	private LoginDTO loginDTO = new LoginDTO();

	private LoginDAO loginDAO = new LoginDAO();

	private BuyItemDTO buyItemDTO = new BuyItemDTO();

	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	private List<BuyItemDTO> buyItemDTOList;


	public String execute(){

		String result = ERROR;

		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);

		session.put("loginUser", loginDTO);

		if(((LoginDTO) session.get("loginUser")).isLoginMaster()){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList", buyItemDTOList);
			session.put("masterId", loginUserId);
			result = "master";

		}

		if(result != "master"){

			if(((LoginDTO) session.get("loginUser")).isLoginFlg()){
				buyItemDTOList = buyItemDAO.getBuyItemInfo();
				session.put("buyItemDTOList", buyItemDTOList);
				session.put("id",buyItemDTO.getId());

				session.put("login_user_id",loginDTO.getLoginId());
				session.put("userName",loginDTO.getUserName());
				session.put("userAddress",loginDTO.getUserAddress());
				session.put("userSex",loginDTO.getUserSex());
				session.put("userTell",loginDTO.getUserTell());
				session.put("userMail",loginDTO.getUserMail());

				result = SUCCESS;


			}


		}

		return result;


	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getLoginUserId() {
		return loginUserId;
	}


	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}


	public String getLoginPassword() {
		return loginPassword;
	}


	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}


	public LoginDTO getLoginDTO() {
		return loginDTO;
	}


	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
	}


	public LoginDAO getLoginDAO() {
		return loginDAO;
	}


	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
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


	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}


	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}


}
