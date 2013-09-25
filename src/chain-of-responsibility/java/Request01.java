package CoR;

public class Request01 extends AbstractRequest {
	public Request01(String content) {
		super(content);
	}
	@Override
	public int getRequestLevel() {
		return Levels.LEVEL_01;
	}
}
