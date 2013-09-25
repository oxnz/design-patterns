package bridge;

public class RefinedAbstraction extends Abstraction {
	@Override
	public void operation() {
		implementor.operation();
	}
}
