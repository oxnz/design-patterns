package com.errpro.design_patterns.interpreter;

import java.util.HashMap;

public class SubExpression extends SymbolExpression {
    public SubExpression(Expression left, Expression right) {
        super(left, right);
    }

    // 左右两个表达式相减
    public int interprete(HashMap<String, Integer> var) {
        return super.left.interprete(var) - super.right.interprete(var);
    }
}
