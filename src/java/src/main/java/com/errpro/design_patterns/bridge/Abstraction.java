package com.errpro.design_patterns.bridge;

public class Abstraction {
    // Fields
    protected Implementor implementor;

    public void setImplementor(Implementor implementor) {
        this.implementor = implementor;
    }

    // Methods
    public void operation() {
        implementor.operation();
    }
}
