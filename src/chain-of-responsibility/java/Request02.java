package CoR;

public class Request02 extends AbstractRequest {
	public Request02(String content) {
		super(content);
	}
	@Override
	public int getRequestLevel() {
		return Levels.LEVEL_02;
	}
}
