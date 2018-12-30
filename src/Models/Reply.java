package Models;

/**************************
* 说明：    回复表Bean
***************************
* 类名：    replyBean
* 包名：    domain
***************************/
public class Reply {

	//  表名
	String tableName = "tb_reply";
	
	//  必须跟数据库顺序字段名一致
	int id;
	int theme;
	String contents;
	int sequence;
	int sender;
	String date;
	
	//  读写器
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTheme() {
		return theme;
	}
	public void setTheme(int theme) {
		this.theme = theme;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getSequence() {
		return sequence;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public int getSender() {
		return sender;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
}
