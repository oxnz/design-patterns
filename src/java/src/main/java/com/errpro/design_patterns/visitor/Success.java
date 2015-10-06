package com.errpro.design_patterns.visitor;

public class Success implements Visitor {
    public void visit(Man m) {
        System.out.println("When a man succeed, there's a great women behind him");
    }

    public void visit(Woman w) {
        System.out.println("When a woman succeed, there's a failed man behind her");
    }
}
