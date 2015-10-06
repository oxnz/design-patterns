package com.errpro.design_patterns.chain_of_responsibility;

public class Request03 extends AbstractRequest {
    public Request03(String content) {
        super(content);
    }

    @Override
    public int getRequestLevel() {
        return Levels.LEVEL_03;
    }
}
