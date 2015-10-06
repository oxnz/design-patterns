package com.errpro.design_patterns.interpreter;

import java.util.HashMap;

public class Client {
    public static void main(String[] args) {
        HashMap<String, Integer> ctx = new HashMap<String, Integer>();
        ctx.put("a", 10);
        ctx.put("b", 20);
        ctx.put("c", 30);
        ctx.put("d", 40);
        ctx.put("e", 50);
        ctx.put("f", 60);
        Calculator calc = new Calculator("a+b-c");
        System.out.println("Result of a+b-c: " + calc.calculate(ctx));
        calc = new Calculator("d-a-b+c");
        System.out.println("Result of d-a-b+c: " + calc.calculate(ctx));
    }
}
