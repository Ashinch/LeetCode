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
	String question;
	String code;
	
	//  ��д��
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
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
