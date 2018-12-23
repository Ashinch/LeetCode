package domain;

/**************************
* 说明：    课程表Bean
***************************
* 类名：    courseBean
* 包名：    domain
***************************/
public class courseBean extends BaseBean{

	//  表名
	String tableName = "tb_course";
	
	//  必须跟数据库顺序字段名一致
	int id;
	String title;
	String image;
	String video;
	String classify;
	String date;
	
	//  读写器
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
