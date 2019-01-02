package Dao;

import java.util.List;
import Models.Theme;

public interface ThemeDao {
	public List<Theme> getAllTheme();
	public Theme getThemeById(int id);
	public List<Theme> getAllThemeByClass(String classify);
	public int addTheme(Theme theme);
}
