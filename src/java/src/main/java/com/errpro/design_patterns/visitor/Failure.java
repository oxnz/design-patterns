package com.errpro.design_patterns.visitor;

public class Failure implements Visitor {
    public void visit(Man m) {
        System.out.println("When a man failed, often drunk himself");
    }

    public void visit(Woman w) {
        System.out.println("When a woman failed, often crying");
    }
}
