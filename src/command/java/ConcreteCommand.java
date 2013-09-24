package command;

public class ConcreteCommand implements Command {
	private Receiver receiver = null;
	private String state;

	public ConcreteCommand(Receiver receiver) {
		this.receiver = receiver;
	}
	public void execute() {
		receiver.action();
	}
}
