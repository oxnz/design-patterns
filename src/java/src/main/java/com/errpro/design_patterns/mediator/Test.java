package com.errpro.design_patterns.mediator;

public class Test {
    public static void main(String[] args) {
        ConcreteMediator mediator = new ConcreteMediator();
        ConcreteColleague1 c1 = new ConcreteColleague1(mediator);
        ConcreteColleague2 c2 = new ConcreteColleague2(mediator);
        mediator.setColleague1(c1);
        mediator.setColleague2(c2);
        c1.sendMsg("吃了吗？");
        c2.sendMsg("没有， 你要请客吗？");
    }
}
