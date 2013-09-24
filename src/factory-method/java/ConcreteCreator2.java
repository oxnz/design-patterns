public class ConcreteCreator2 implements Creator {
	public Product factory() {
		return new ConcreteProductB();
	}
}
