package com.internousdev.myec.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.BuyItemDAO;
import com.internousdev.myec.dto.BuyItemDTO;
import com.internousdev.myec.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductPageAction extends ActionSupport implements SessionAware {

	List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();
	List<BuyItemDTO> buyItemDTOList2 = new ArrayList<BuyItemDTO>();
	public Map<String, Object> session;
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private LoginDTO loginDTO = new LoginDTO();


	public String execute() {

		String ret = ERROR;

		if(session.containsKey("id")){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList",buyItemDTOList);
			session.put("id", buyItemDTO.getId());
			session.put("login_user_id",loginDTO.getLoginId());
			session.put("userName",loginDTO.getUserName());
			session.put("userAddress",loginDTO.getUserAddress());
			ret = SUCCESS;

		}

		return ret;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
