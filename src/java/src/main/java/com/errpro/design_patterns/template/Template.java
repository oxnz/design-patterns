package com.errpro.design_patterns.template;

public abstract class Template {
    private void beforeOperation() {
        System.out.println("action before operation");
    }

    private void afterOperation() {
        System.out.println("action after operation");
    }

    //需要推迟到子类(实现类) 中执行
    protected abstract void operation();

    public void action() {
        beforeOperation();
        operation();
        afterOperation();
    }
}
