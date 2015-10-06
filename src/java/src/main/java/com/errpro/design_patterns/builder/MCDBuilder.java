package com.errpro.design_patterns.builder;

public class MCDBuilder implements AbstractBuilder {
    public void buildStep1() {
        System.out.println("MCD Step 1");
    }

    public void buildStep2() {
        System.out.println("MCD Step 2");
    }

    public void buildProduct() {
        buildStep1();
        buildStep2();
        System.out.println("MCD Product Finished");
    }
}
