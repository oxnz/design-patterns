package com.errpro.design_patterns.abstract_factory;

public class ConcreteFactory2 extends Factory2 {
	public ProductA getProductA2() {
		return new ProductA2();
	}
	public ProductB getProductB2() {
		return new ProductB2();
	}
}
