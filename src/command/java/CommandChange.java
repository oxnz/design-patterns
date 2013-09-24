package example;
import command.Command;

public class CommandChange implements Command {
	private TV tv;
	private int channel;

	public CommandChange(TV tv, int channel) {
		this.tv = tv;
		this.channel = channel;
	}
	public void execute() {
		tv.changeChannel(channel);
	}
}
