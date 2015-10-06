package com.errpro.design_patterns.chain_of_responsibility;

public class Request01 extends AbstractRequest {
    public Request01(String content) {
        super(content);
    }

    @Override
    public int getRequestLevel() {
        return Levels.LEVEL_01;
    }
}
