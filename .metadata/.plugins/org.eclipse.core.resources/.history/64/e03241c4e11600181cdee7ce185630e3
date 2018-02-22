package internousdev.sub.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import java.util.Map;

public class LogoutAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	public String execute(){

		String result = SUCCESS;
		session.clear();
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
