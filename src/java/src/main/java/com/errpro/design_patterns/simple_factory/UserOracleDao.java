public class UserOracleDao implements UserDao {
	public void insert(User u) {
		System.out.println("insert user: " + u.getId() + " into oracle db");
	}
	public void deleteById(String Id) {
		System.out.println("delete user: " + Id + " from oracle db");
	}
}
