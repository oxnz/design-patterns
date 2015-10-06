package com.errpro.design_patterns.interpreter;

import java.util.HashMap;

public class VarExpression implements Expression {
    private String key;

    public VarExpression(String key) {
        this.key = key;
    }

    public int interprete(HashMap<String, Integer> var) {
        return (Integer) var.get(this.key);
    }
}
