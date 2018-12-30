package Models;

/**************************
* 说明：    试题表Bean
***************************
* 类名：    PaperBean
* 包名：    domain
***************************/
public class Paper {

	//  表名
	String tableName = "tb_paper";
	
	//  必须跟数据库顺序字段名一致
	int id;
	String question;
	String code;
	
	//  读写器
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
