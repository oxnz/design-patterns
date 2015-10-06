public class Test {
	public static void main(String[] args) {
		UserDao userDao = UserDaoFactory.createUserDao("ORACLE");
		userDao.insert(new User("Client0x01"));
		userDao.deleteById("Client0x01");
		userDao = UserDaoFactory.createUserDao("DB2");
		userDao.insert(new User("guest0x01"));
		userDao.deleteById("guest0x01");
	}
}
