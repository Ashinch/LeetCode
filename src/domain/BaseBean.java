package domain;

/**************************
* 说明：    JavaBean基类
***************************
* 类名：    BaseBean
* 包名：    domain
***************************/
public class BaseBean {
	
	String tableName = "tb_base";
	int id = 1;
	
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
}
