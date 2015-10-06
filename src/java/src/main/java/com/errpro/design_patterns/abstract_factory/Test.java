package com.errpro.design_patterns.abstract_factory;

public class Test {
	public static void main(String[] args) {
		Factory1 f1 = new ConcreteFactory1();
		ProductA pa1 = f1.getProductA1();
		ProductB pb1 = f1.getProductB1();

		pa1.echo();
		pb1.echo();

		Factory2 f2 = new ConcreteFactory2();
		ProductA pa2 = f2.getProductA2();
		ProductB pb2 = f2.getProductB2();

		pa2.echo();
		pb2.echo();
	}
}
