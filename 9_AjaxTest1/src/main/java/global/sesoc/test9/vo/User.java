package global.sesoc.test9.vo;

public class User {
		public String userid;
		public String username;
		public String userphone;
		
		public User() {
			super();
			// TODO Auto-generated constructor stub
		}

		public User(String userid, String username, String userphone) {
			super();
			this.userid = userid;
			this.username = username;
			this.userphone = userphone;
		}

		public String getUserid() {
			return userid;
		}

		public void setUserid(String userid) {
			this.userid = userid;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getUserphone() {
			return userphone;
		}

		public void setUserphone(String userphone) {
			this.userphone = userphone;
		}
		
		
}
