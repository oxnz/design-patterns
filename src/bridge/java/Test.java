import bridge.Abstraction;
import bridge.RefinedAbstraction;
import bridge.ConcreteImplementorA;
import bridge.ConcreteImplementorB;

public class Test {
	public static void main(String[] args) {
		Abstraction abstraction = new RefinedAbstraction();

		// Set implementation and call
		abstraction.setImplementor(new ConcreteImplementorA());
		abstraction.operation();

		// Change implementation and call
		abstraction.setImplementor(new ConcreteImplementorB());
		abstraction.operation();
	}
}
