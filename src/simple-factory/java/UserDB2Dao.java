public class UserDB2Dao implements UserDao {
	public void insert(User u) {
		System.out.println("insert user: " + u.getId() + " into DB2 db");
	}
	public void deleteById(String Id) {
		System.out.println("delete user: " + Id + " from DB2 db");
	}
}
