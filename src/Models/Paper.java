package Models;

/**************************
* ˵����    �����Bean
***************************
* ������    PaperBean
* ������    domain
***************************/
public class Paper {

	//  ����
	String tableName = "tb_paper";
	
	//  ��������ݿ�˳���ֶ���һ��
	int id;
	String title;
	String contents;
	String code;
	
	//  ��д��
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
}
