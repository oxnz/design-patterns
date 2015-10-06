package com.errpro.design_patterns.chain_of_responsibility;

public class Test {
    public static void main(String[] args) {
        // 创建指责链的所有节点
        AbstractHandler h01 = new Handler01();
        AbstractHandler h02 = new Handler02();
        AbstractHandler h03 = new Handler03();

        // 进行链的组装，即头尾相连，一层套一层
        h01.setSuccessor(h02);
        h02.setSuccessor(h03);

        // 创建请求并提交到指责链中进行处理
        AbstractRequest r01 = new Request01("Request 01");
        AbstractRequest r02 = new Request02("Request 02");
        AbstractRequest r03 = new Request03("Request 03");

        // 每次提交都是从链头开始遍历
        h01.handleRequest(r01);
        h01.handleRequest(r02);
        h01.handleRequest(r03);
    }
}
