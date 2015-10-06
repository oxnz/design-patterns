package com.errpro.design_patterns.visitor;

public class Love implements Visitor {
    public void visit(Man m) {
        System.out.println("When a man fall in love, pretend knowing everything");
    }

    public void visit(Woman w) {
        System.out.println("When a woman fall in love, pretend knowing nothing");
    }
}
