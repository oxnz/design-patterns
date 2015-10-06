package com.errpro.design_patterns.interpreter;

import java.util.HashMap;

public interface Expression {
    public int interprete(HashMap<String, Integer> var);
}
