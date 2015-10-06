package com.errpro.design_patterns.abstract_factory;

public class ConcreteFactory1 extends Factory1 {
	public ProductA getProductA1() {
		return new ProductA1();
	}
	public ProductB getProductB1() {
		return new ProductB1();
	}
}
