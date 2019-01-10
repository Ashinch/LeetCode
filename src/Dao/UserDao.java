package Dao;

import java.util.List;

import Models.User;

public interface UserDao {
	public User getUserByName(String name);
	public User getUserById(int id);
	public List<User> getRank500();
	public List<User> getRank10FromChina();
	public int addUser(User user);
	public int updateUser(User user);
	public String getFaceById(int id);
}