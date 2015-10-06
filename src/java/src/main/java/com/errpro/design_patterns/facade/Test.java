package com.errpro.design_patterns.facade;

public class Test {
    public static void main(String[] args) {
        OperatorWrapper opt = new OperatorWrapper();
        opt.methodA();
        opt.methodB();
    }
}
