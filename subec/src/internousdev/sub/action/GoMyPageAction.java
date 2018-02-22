package internousdev.sub.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoMyPageAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	public String execute(){

		String result = "error";

		if(session.containsKey("id")){
			result = "success";

		}if(session.containsKey("masterId")){
			result = "master";
		}

		return result;

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
