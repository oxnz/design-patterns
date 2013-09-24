package proxy;

public class RealSubject extends Subject {
	public RealSubject(){}
	public void request() {
		System.out.println("request in real subject");
	}
}
