public class Man implements Person {
	public void accept(Visitor v) {
		v.visit(this);
	}
}
