public class Test {

	public static void main(String[] args) {
		TestUserDAO dao = new TestUserDAO();



		/**
		 * 	dao.insert(4, "shiro", "012");
		 *  dao.selectAll();
		 *dao.selectByName("hanako");
		 * dao.select("tanaka", "123");
		 * dao.selectAll();
		 * dao.selectByPassword("568");
		 * dao.updateUserNameByUserName("tanaka","shiraishi");
		 */

		dao.delete("shiro");
		dao.selectAll();




	}

}
