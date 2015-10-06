package com.errpro.design_patterns.factory_method;

public class Test {
    private static Creator c1, c2;
    private static Product pA, pB;

    public static void main(String[] args) {
        c1 = new ConcreteCreator1();
        pA = c1.factory();
        System.out.println("------------------");
        c2 = new ConcreteCreator2();
        pB = c2.factory();
    }
}
