package com.errpro.design_patterns.chain_of_responsibility;

public class Handler01 extends AbstractHandler {
    @Override
    protected int getHandlerLevel() {
        return Levels.LEVEL_01;
    }

    @Override
    protected void handle(AbstractRequest request) {
        System.out.println("Handler-01 handling " + request.getContent());
    }
}
