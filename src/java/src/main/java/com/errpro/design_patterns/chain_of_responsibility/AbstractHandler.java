package com.errpro.design_patterns.chain_of_responsibility;

// 抽象处理者类
public abstract class AbstractHandler {
    // 责任链的下一个节点，即处理者
    private AbstractHandler successor = null;

    // 捕获具体请求并进行处理，或是将请求传递到责任链的下一级别
    public final void handleRequest(AbstractRequest request) {
        // 若该请求与当前处理者的级别层次相对应，则由自己进行处理
        if (this.getHandlerLevel() == request.getRequestLevel()) {
            this.handle(request);
        } else {
            // 当前处理者不能胜任，则传递至职责链的下一节点
            if (this.successor != null) {
                System.out.println("Handler-0" +
                        this.getHandlerLevel() +
                        " Can't handle Request-0" +
                        request.getRequestLevel());
                // 这里使用了递归调用
                this.successor.handleRequest(request);
            } else {
                System.out.println("Can't handle Request-0" +
                        request.getRequestLevel());
            }
        }
    }

    // 设置责任链中的下一个处理者
    public void setSuccessor(AbstractHandler successor) {
        this.successor = successor;
    }

    // 获取当前处理者的级别
    protected abstract int getHandlerLevel();

    // 定义链中每个处理者具体的处理方式
    protected abstract void handle(AbstractRequest request);
}
