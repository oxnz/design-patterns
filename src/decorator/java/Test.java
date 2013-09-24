import decorator.ConcreteDecorator;
import decorator.ConcreteComponent;

public class Test {
	public static void main(String[] args) {
		ConcreteDecorator concreteDecorator = new ConcreteDecorator(new
				ConcreteComponent());
		concreteDecorator.operation();
	}
}
