package com.errpro.design_patterns.adapter;

public class Test {
    public static void main(String[] args) {
        Adapter adapter = new Adapter(new Adaptee());
        adapter.request();
    }
}
