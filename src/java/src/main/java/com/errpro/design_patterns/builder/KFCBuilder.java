package com.errpro.design_patterns.builder;

public class KFCBuilder implements AbstractBuilder {
    public void buildStep1() {
        System.out.println("KFC build step1");
    }

    public void buildStep2() {
        System.out.println("KFC build step1");
    }

    public void buildProduct() {
        buildStep1();
        buildStep2();
        System.out.println("KFC Product Finished");
    }
}
