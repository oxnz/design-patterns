public class Singleton {
	private Singleton(){}
	private static final Singleton singleton = new Singleton();
	public static Singleton getInstance() {
		System.out.println("getInstance");
		return singleton;
	}
}
