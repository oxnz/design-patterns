public class Woman implements Person {
	public void accept(Visitor v) {
		v.visit(this);
	}
}
