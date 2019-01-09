package Dao;

import java.util.List;

import Models.*;

public interface CodeDao {
	public List<Code> getAllCode();
	public Code getAllCodeByName(String name);
}
