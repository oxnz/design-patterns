package com.errpro.design_patterns.visitor;

public interface Visitor {
    public void visit(Man m);

    public void visit(Woman w);
}
