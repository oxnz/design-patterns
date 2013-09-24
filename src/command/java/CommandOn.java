package example;
import command.Command;

public class CommandOn implements Command {
	private TV tv;
	public CommandOn(TV tv) {
		this.tv = tv;
	}
	public void execute() {
		tv.turnOn();
	}
}
