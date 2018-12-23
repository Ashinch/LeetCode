package domain;

/**************************
* 说明：    用户表Bean
***************************
* 类名：    UserBean
* 包名：    domain
***************************/
public class UserBean extends BaseBean{
	
	//  表名
	String tableName = "tb_user";
	
	//  必须跟数据库顺序字段名一致
	int id;
	String username;
	String password;
	String face;
	int rank;
	int points;
	int warm_count;
	int random_count;
	int virtual_count;
	int weekly_count;
	int warm_win;
	int random_win;
	int virtual_win;
	int weekly_win;
	
	//  读写器
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getWarm_count() {
		return warm_count;
	}
	public void setWarm_count(int warmCount) {
		warm_count = warmCount;
	}
	public int getRandom_count() {
		return random_count;
	}
	public void setRandom_count(int randomCount) {
		random_count = randomCount;
	}
	public int getVirtual_count() {
		return virtual_count;
	}
	public void setVirtual_count(int virtualCount) {
		virtual_count = virtualCount;
	}
	public int getWeekly_count() {
		return weekly_count;
	}
	public void setWeekly_count(int weeklyCount) {
		weekly_count = weeklyCount;
	}
	public int getWarm_win() {
		return warm_win;
	}
	public void setWarm_win(int warmWin) {
		warm_win = warmWin;
	}
	public int getRandom_win() {
		return random_win;
	}
	public void setRandom_win(int randomWin) {
		random_win = randomWin;
	}
	public int getVirtual_win() {
		return virtual_win;
	}
	public void setVirtual_win(int virtualWin) {
		virtual_win = virtualWin;
	}
	public int getWeekly_win() {
		return weekly_win;
	}
	public void setWeekly_win(int weeklyWin) {
		weekly_win = weeklyWin;
	}
}
