public interface Subject {
	public void attach(Observer ob);
	public void detach(Observer ob);
	void notifyObservers();
	public void change();
}
