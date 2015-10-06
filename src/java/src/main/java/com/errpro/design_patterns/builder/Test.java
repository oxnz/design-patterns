package com.errpro.design_patterns.builder;

public class Test {
    public static void main(String[] args) {
        System.out.println("Client want a MCD Product");
        Director director = new Director();
        director.buildMCD();
        System.out.println("Client want a KFC Product");
        director.buildKFC();
    }
}
