package com.errpro.design_patterns.state;

//测试用例 模拟servlet容器
public class Test {
	public static void main(String[] args) {
		IndexServerlet s = new IndexServerlet();
		//用户第一次直接到主页面
		s.request();
		//用户有登陆请求
		s.request("login");
		s.request("logout");
		s.request("login");
		s.request("logout");
	}
}
