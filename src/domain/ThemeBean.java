package domain;

/**************************
* ˵����    �����Bean
***************************
* ������    ThemeBean
* ������    domain
***************************/
public class ThemeBean extends BaseBean{

	//  ����
	String tableName = "tb_theme";
	
	//  ��������ݿ�˳���ֶ���һ��
	int id;
	String title;
	String contents;
	String classify;
	int sender;
	String date;
	
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
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
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
