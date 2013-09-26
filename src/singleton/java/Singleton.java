public class Singleton {
	private Singleton(){}
	private static final Singleton singleton = new Singleton();
	/**
	 * Returns an Singleton object that only exist one copy.
	 * <p>
	 *
	 * This method returns a static final object.
	 *
	 * @return	a Sinleton instance
	 */
	public static Singleton getInstance() {
		System.out.println("getInstance");
		return singleton;
	}
}
