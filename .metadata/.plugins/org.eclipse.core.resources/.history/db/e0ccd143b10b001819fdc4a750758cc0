package com.internousdev.myec.action;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.myec.dao.InquiryCompleteDAO;
import com.internousdev.myec.dto.InquiryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class InquiryAction extends ActionSupport implements SessionAware{

	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();
	private Map<String,Object> session;


	//問い合わせページに飛ばすメソッド


	public String execute(){

		String ret = ERROR;
		InquiryCompleteDAO inquiryCompleteDAO = new InquiryCompleteDAO();

		if(session.containsKey("masterId")){
			inquiryDTOList = inquiryCompleteDAO.select();
			session.put("inquiryDTOList", inquiryDTOList);
			ret = "master";

		}else{

			ret = SUCCESS;
		}


		return ret;
}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public void setsession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getsession() {
		return this.session;
	}

	}


