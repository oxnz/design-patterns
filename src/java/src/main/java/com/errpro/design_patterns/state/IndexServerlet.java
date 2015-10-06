package com.errpro.design_patterns.state;

interface UserState {
	public void handle(IndexServerlet s);
}

public class IndexServerlet {
	private UserState state;
	private String action;
	
	//servlet第一次被实例化的时候处于未登录状态
	public IndexServerlet() {
		setState(new LogoutState());
		action = "";
	}
	public String getAction() {
		return this.action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public UserState getState() {
		return this.state;
	}
	public void setState(UserState state) {
		this.state = state;
	}
	public void request(String action) {
		this.action = action;
		state.handle(this);
	}
	public void request() {
		state.handle(this);
	}
}

class LoginState implements UserState {
	public void handle(IndexServerlet s) {
		System.out.println("current user is login, you'll see logout button");
		if (s.getAction().equals("logout")) {
			s.setState(new LogoutState());
		}
	}
}

class LogoutState implements UserState {
	public void handle(IndexServerlet s) {
		System.out.println("current user is logout, you'll see login button");
		if (s.getAction().equals("login")) {
			s.setState(new LoginState());
		}
	}
}

