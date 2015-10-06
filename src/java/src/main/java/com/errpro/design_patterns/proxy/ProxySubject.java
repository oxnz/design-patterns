package com.errpro.design_patterns.proxy;

public class ProxySubject extends Subject {
    private RealSubject realSubject;    // 以真实角色作为代理角色的属性

    public ProxySubject() {
    }

    public void request() {    // 该方法封装了真实对象的request方法
        preRequest();
        if (realSubject == null) {
            realSubject = new RealSubject();
        }
        realSubject.request();
        postRequest();
    }

    public void preRequest() {
        System.out.println("Pre request in proxy");
    }

    public void postRequest() {
        System.out.println("Post request in proxy");
    }
}
