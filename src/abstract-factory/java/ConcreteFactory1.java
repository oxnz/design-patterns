public class ConcreteFactory1 extends Factory1 {
	public ProductA getProductA1() {
		return new ProductA1();
	}
	public ProductB getProductB1() {
		return new ProductB1();
	}
}
