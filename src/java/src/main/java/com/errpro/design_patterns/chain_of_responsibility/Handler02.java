package com.errpro.design_patterns.chain_of_responsibility;

public class Handler02 extends AbstractHandler {
    @Override
    protected int getHandlerLevel() {
        return Levels.LEVEL_02;
    }

    @Override
    protected void handle(AbstractRequest request) {
        System.out.println("Handler-02 handling " + request.getContent());
    }
}
