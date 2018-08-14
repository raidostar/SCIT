package global.sesoc.test9.vo;

public class Reply {
		private int replynum;
		private String userid;
		private String replytext;
		private String regdate;

		public Reply() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Reply(int replynum, String userid, String replytext, String regdate) {
			super();
			this.replynum = replynum;
			this.userid = userid;
			this.replytext = replytext;
			this.regdate = regdate;
		}

		public int getReplynum() {
			return replynum;
		}

		public void setReplynum(int replynum) {
			this.replynum = replynum;
		}

		public String getUserid() {
			return userid;
		}

		public void setUserid(String userid) {
			this.userid = userid;
		}

		public String getreplytext() {
			return replytext;
		}

		public void setreplytext(String replytext) {
			this.replytext = replytext;
		}

		public String getRegdate() {
			return regdate;
		}

		public void setRegdate(String regdate) {
			this.regdate = regdate;
		}

		@Override
		public String toString() {
			return "Reply [replynum=" + replynum + ", userid=" + userid + ", replytext=" + replytext + ", regdate="
					+ regdate + "]";
		}
}
