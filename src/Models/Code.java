package Models;

/**************************
* ˵����    �����Bean
***************************
* ������    CodeBean
* ������    domain
***************************/
public class Code {

	//  ����
	String tableName = "tb_code";
	
	//  ��������ݿ�˳���ֶ���һ��
	int id;
	String name;
	String code;
	
	//  ��д��
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
