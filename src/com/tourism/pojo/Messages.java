package com.tourism.pojo;

import java.util.HashMap;
import java.util.Map;



public class Messages {
	//状态码   1-成功    0-失败
		private  int code;
		//提示信息
		private String message;
		
		//用户要返回给浏览器的数据
		private  Map<String, Object> resultDate = new HashMap<String, Object>();

		public static Messages success(){
			Messages result = new Messages();
			result.setCode(1);
			System.out.println(result.code);
			result.setMessage("处理成功！");
			return result;
		}
		
		public static Messages fail(){
			Messages result = new Messages();
			result.setCode(0);
			result.setMessage("处理失败！");
			return result;
		}
		
		public  Messages put(String key,Object value){
			this.getResultDate().put(key, value);
			return this;
		}
		
		public  int getCode() {
			return code;
		}

		public void setCode(int code) {
			this.code = code;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

		public Map<String, Object> getResultDate() {
			return resultDate;
		}

		public void setResultDate(Map<String, Object> resultDate) {
			this.resultDate = resultDate;
		}
		
		
}
