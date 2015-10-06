package com.errpro.design_patterns.prototype;

public class Test {
    public static void main(String[] args) {
        Prototype p = new Prototype("I am a prototype");
        Prototype p1 = p.clone();
        System.out.println(p1.getName());
    }
}
