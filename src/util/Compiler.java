package util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import net.sf.json.JSONObject;

public class Compiler {
	public static void run(String language, String code) {
		try {
			System.out.print("begin run");
			URL url = new URL("http://leetcode-cn.com/playground/api/runcode");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setConnectTimeout(5000);
	        conn.setRequestMethod("POST");
	        conn.setUseCaches(false);
	        conn.setDoOutput(true);
	        conn.setDoInput(true);
	        
	        conn.setRequestProperty("Content-Type", "application/json");
	        conn.setRequestProperty("Origin", "http://leetcode-cn.com");
	        conn.setRequestProperty("Content-Length", "123");
	        conn.setRequestProperty("Accept", "*/*");
	        conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6818.400 QQBrowser/10.3.3024.400");
	        conn.setRequestProperty("Referer", "http://leetcode-cn.com/playground/new/empty");
	        conn.setRequestProperty("Accept-Encoding", "gzip, deflate, br");
	        conn.setRequestProperty("Accept-Language", "zh-CN,zh;q=0.9");
	        conn.setRequestProperty("x-csrftoken","aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1");
	        conn.setRequestProperty("cookie","_uab_collina=153719430667797976177566; gr_user_id=41a57e6c-4b4a-42de-af39-714eb878cd62; grwng_uid=60a23a4f-27e5-4cb2-9019-7e95c10e9df0; a2873925c34ecbd2_gr_last_sent_cs1=glaxy; O5LM_2132_nofavfid=1; O5LM_2132_ulastactivity=22922bkT0w44ncxn1FaQpAwqK51BWJAXpW3kh2FQlpoa\\%2FSszGb5a; O5LM_2132_smile=1D1; O5LM_2132_forum_lastvisit=D_2_1545992121D_45_1545992129D_46_1545992134; O5LM_2132_visitedfid=46D45D2; csrftoken=aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiODk4NTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhdXRoZW50aWNhdGlvbi5hdXRoX2JhY2tlbmRzLlBob25lQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjc1YjJiZmRiNGUwMTgzZjc3NWNkNTU0ZGY0NDZjYzQxZDE4NTg1MyIsImlkIjo4OTg1OCwiZW1haWwiOiJHbGF4eWluZmluaXRlQG91dGxvb2suY29tIiwidXNlcm5hbWUiOiJHbGF4eSIsInVzZXJfc2x1ZyI6ImdsYXh5IiwiYXZhdGFyIjoiaHR0cHM6Ly9hc3NldHMubGVldGNvZGUtY24uY29tL2FsaXl1bi1sYy11cGxvYWQvdXNlcnMvZ2xheHkvYXZhdGFyXzE1Mjg0Mzc5MzUucG5nIiwicGhvbmVfdmVyaWZpZWQiOnRydWUsInRpbWVzdGFtcCI6IjIwMTgtMTItMjggMTQ6NDY6MzcuNzE5MTU0KzAwOjAwIiwiUkVNT1RFX0FERFIiOiI1OC41OS4xNTMuMTA3IiwiSURFTlRJVFkiOiJkZGIyNWUzODIzYTE2MTU2NzYwNTI5MWViZmVlNjVjMCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0.0IlhT43t032tFFNebntLU5Ud-lRYmD6Fcks3pQ23QYg; Hm_lvt_fa218a3ff7179639febdb15e372f411c=1545911753,1545989811,1546238508; a2873925c34ecbd2_gr_session_id=bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e; a2873925c34ecbd2_gr_last_sent_sid_with_cs1=bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e; a2873925c34ecbd2_gr_session_id_bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e=true; Hm_lpvt_fa218a3ff7179639febdb15e372f411c=1546238593; a2873925c34ecbd2_gr_cs1=glaxy");
	        
	        String data = "{\"lang\":\"cpp\",\"typed_code\":\"" + code + "\",\"data_input\":\"\"}";
	        
	        OutputStream os = conn.getOutputStream();
	        os.write(data.getBytes());
	        os.flush();
	        System.out.print(1);
	        switch (conn.getResponseCode()) {
	        	case 200:
	        		InputStream is = conn.getInputStream();
	//        		JSONObject result = new JSONObject(is.toString());
	//        		
	//        		System.out.print("interpret_id : " + result.get("interpret_id"));
	        		System.out.print(is.toString());
	                conn.disconnect();
	
	                break;
	        }
        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
