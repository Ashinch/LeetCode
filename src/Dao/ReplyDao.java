package Dao;

import java.util.*;
import Models.Reply;

public interface ReplyDao {
	public List<Reply> getAllReplyByThemeId(int id);
	public int addReply(Reply reply);
	public int deleteReply(Reply reply);
}
