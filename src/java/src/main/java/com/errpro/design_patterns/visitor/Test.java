package com.errpro.design_patterns.visitor;

public class Test {
    public static void main(String[] args) {
        Love love = new Love();
        Success success = new Success();

        Man man = new Man();
        Woman woman = new Woman();

        man.accept(success);
        woman.accept(success);
        man.accept(love);
        woman.accept(love);
    }
}
