package domain;

/**************************
* ˵����    JavaBean����
***************************
* ������    BaseBean
* ������    domain
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
