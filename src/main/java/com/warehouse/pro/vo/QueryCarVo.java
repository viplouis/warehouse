	package com.warehouse.pro.vo;

	public class QueryCarVo {
		

		private String licence;
		private String driver;
		private String count;
		private String residuenumber;


		public String getLicence() {
			return licence;
		}


		public void setLicence(String licence) {
			this.licence = licence;
		}


		public String getDriver() {
			return driver;
		}


		public void setDriver(String driver) {
			this.driver = driver;
		}
		public String getCount() {
			return count;
		}


		public void setCount(String count) {
			this.count = count;
		}


		public String getResiduenumber() {
			return residuenumber;
		}


		public void setResiduenumber(String residuenumber) {
			this.residuenumber = residuenumber;
		}


		@Override
		public String toString() {
			return "QueryCarVo [licence=" + licence + ", driver=" + driver+ ", count=" + count  + ", residuenumber=" + residuenumber+"]";
		}

	}

