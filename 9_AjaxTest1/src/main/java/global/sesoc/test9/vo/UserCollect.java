package global.sesoc.test9.vo;

import java.util.List;

public class UserCollect {
		private User user;
		private String zip;
		private String address;
		private List<Education> list;
		
		public UserCollect() {
			super();
			// TODO Auto-generated constructor stub
		}

		public UserCollect(User user, String zip, String address, List<Education> list) {
			super();
			this.user = user;
			this.zip = zip;
			this.address = address;
			this.list = list;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public String getZip() {
			return zip;
		}

		public void setZip(String zip) {
			this.zip = zip;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public List<Education> getList() {
			return list;
		}

		public void setList(List<Education> list) {
			this.list = list;
		}

		@Override
		public String toString() {
			return "UserCollect [user=" + user + ", zip=" + zip + ", address=" + address + ", list=" + list + "]";
		}	
}
