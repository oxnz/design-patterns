import proxy.Subject;
import proxy.ProxySubject;

public class Test {
	public static void main(String[] args) {
		Subject sub = new ProxySubject();
		sub.request();
	}
}
