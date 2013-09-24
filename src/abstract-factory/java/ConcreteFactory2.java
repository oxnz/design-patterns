public class ConcreteFactory2 extends Factory2 {
	public ProductA getProductA2() {
		return new ProductA2();
	}
	public ProductB getProductB2() {
		return new ProductB2();
	}
}
