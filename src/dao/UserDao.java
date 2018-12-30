package Dao;

import java.util.List;

import Models.User;

public interface UserDao {
	public User getUserByName(String name);
	public User getUserById(int id);
	public List<User> getRank500();
	public int addUser(User user);
	public int updateUser(User user);
//	public List<Ware>  getAllWare();
//	public int insertWare(Ware ware);
//	public int updateWare(Ware ware);
//	public int deleteWare(int wareId);
//	
}
