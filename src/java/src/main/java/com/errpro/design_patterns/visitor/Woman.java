package com.errpro.design_patterns.visitor;

public class Woman implements Person {
    public void accept(Visitor v) {
        v.visit(this);
    }
}
