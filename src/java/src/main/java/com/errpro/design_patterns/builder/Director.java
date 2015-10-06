package com.errpro.design_patterns.builder;

public class Director {
    private AbstractBuilder MCDBuilder = new MCDBuilder();
    private AbstractBuilder KFCBuilder = new KFCBuilder();

    public void buildMCD() {
        MCDBuilder.buildProduct();
    }

    public void buildKFC() {
        KFCBuilder.buildProduct();
    }
}
