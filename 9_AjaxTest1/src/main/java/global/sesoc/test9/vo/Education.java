package global.sesoc.test9.vo;

public class Education {
		private String schoolname;
		private String major;
		private String grade;

		public Education() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Education(String schoolname, String major, String grade) {
			super();
			this.schoolname = schoolname;
			this.major = major;
			this.grade = grade;
		}

		public String getSchoolname() {
			return schoolname;
		}

		public void setSchoolname(String schoolname) {
			this.schoolname = schoolname;
		}

		public String getMajor() {
			return major;
		}

		public void setMajor(String major) {
			this.major = major;
		}

		public String getGrade() {
			return grade;
		}

		public void setGrade(String grade) {
			this.grade = grade;
		}		
}
