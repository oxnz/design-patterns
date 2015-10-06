package com.errpro.design_patterns.adapter;

// 1)对象适配器
public class Adapter implements Target {
    private Adaptee adaptee = null;

    public Adapter(Adaptee adaptee) {
        this.adaptee = adaptee;
    }

    public void request() {
        adaptee.specificRequest();
    }
}


// 2)类适配器
/*
public class Adapter extends Adaptee implements Target {
	public void request() {
		super.specificRequest();
	}
}
*/
