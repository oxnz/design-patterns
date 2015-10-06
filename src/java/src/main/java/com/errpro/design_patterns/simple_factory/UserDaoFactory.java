public class UserDaoFactory {
	public static UserDao createUserDao(String type) {
		if ("ORACLE".equals(type)) {
			return new UserOracleDao();
		}
		else if ("DB2".equals(type)) {
			return new UserDB2Dao();
		}
		else {
			return null;
		}
	}
}
