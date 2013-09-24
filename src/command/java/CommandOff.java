package example;
import command.Command;

public class CommandOff implements Command {
	private TV tv;
	public CommandOff(TV tv) {
		this.tv = tv;
	}
	public void execute() {
		tv.turnOff();
	}
}
