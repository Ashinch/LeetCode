package domain;

/**************************
* ˵����    �γ̱�Bean
***************************
* ������    courseBean
* ������    domain
***************************/
public class courseBean extends BaseBean{

	//  ����
	String tableName = "tb_course";
	
	//  ��������ݿ�˳���ֶ���һ��
	int id;
	String title;
	String image;
	String video;
	String classify;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
