package Models;

/**************************
* 说明：    代码表Bean
***************************
* 类名：    CodeBean
* 包名：    domain
***************************/
public class Code {

	//  表名
	String tableName = "tb_code";
	
	//  必须跟数据库顺序字段名一致
	int id;
	String name;
	String code;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
}
