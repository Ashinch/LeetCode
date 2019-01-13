package util;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.zip.GZIPInputStream;

import javax.net.ssl.HttpsURLConnection;


import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.processors.JsonBeanProcessor;

import org.apache.commons.collections.functors.WhileClosure;
import org.apache.commons.io.IOUtils;


public class Compiler {
	public static String run(String language, String code) {
		try {
			System.setProperty("javax.net.debug", "all");
			URL url = new URL("https://leetcode-cn.com/playground/api/runcode");
			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
			conn.setHostnameVerifier(new CustomizedHostnameVerifier());
			conn.setConnectTimeout(5000);
	        conn.setRequestMethod("POST");
	        conn.setUseCaches(false);
	        conn.setDoOutput(true);
	        conn.setDoInput(true);
	        
	        conn.setRequestProperty("content-type", "application/json");
	        conn.setRequestProperty("origin", "https://leetcode-cn.com");
	        conn.setRequestProperty("content-length", "123");
	        conn.setRequestProperty("accept", "*/*");
	        conn.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6818.400 QQBrowser/10.3.3024.400");
	        conn.setRequestProperty("referer", "https://leetcode-cn.com/playground/new/empty");
	        conn.setRequestProperty("accept-encoding", "gzip, deflate, br");
	        conn.setRequestProperty("accept-language", "zh-CN,zh;q=0.9");
	        conn.setRequestProperty("x-csrftoken","aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1");
	        conn.setRequestProperty("cookie","_uab_collina=153719430667797976177566; gr_user_id=41a57e6c-4b4a-42de-af39-714eb878cd62; grwng_uid=60a23a4f-27e5-4cb2-9019-7e95c10e9df0; a2873925c34ecbd2_gr_last_sent_cs1=glaxy; O5LM_2132_nofavfid=1; O5LM_2132_ulastactivity=22922bkT0w44ncxn1FaQpAwqK51BWJAXpW3kh2FQlpoa%2FSszGb5a; O5LM_2132_smile=1D1; O5LM_2132_visitedfid=46D45D2; csrftoken=aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiODk4NTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhdXRoZW50aWNhdGlvbi5hdXRoX2JhY2tlbmRzLlBob25lQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjc1YjJiZmRiNGUwMTgzZjc3NWNkNTU0ZGY0NDZjYzQxZDE4NTg1MyIsImlkIjo4OTg1OCwiZW1haWwiOiJHbGF4eWluZmluaXRlQG91dGxvb2suY29tIiwidXNlcm5hbWUiOiJHbGF4eSIsInVzZXJfc2x1ZyI6ImdsYXh5IiwiYXZhdGFyIjoiaHR0cHM6Ly9hc3NldHMubGVldGNvZGUtY24uY29tL2FsaXl1bi1sYy11cGxvYWQvdXNlcnMvZ2xheHkvYXZhdGFyXzE1Mjg0Mzc5MzUucG5nIiwicGhvbmVfdmVyaWZpZWQiOnRydWUsInRpbWVzdGFtcCI6IjIwMTgtMTItMjggMTQ6NDY6MzcuNzE5MTU0KzAwOjAwIiwiUkVNT1RFX0FERFIiOiI1OC41OS4xNTMuMTA3IiwiSURFTlRJVFkiOiJkZGIyNWUzODIzYTE2MTU2NzYwNTI5MWViZmVlNjVjMCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0.0IlhT43t032tFFNebntLU5Ud-lRYmD6Fcks3pQ23QYg; Hm_lvt_fa218a3ff7179639febdb15e372f411c=1546338817,1546574172,1546757515,1546830314; c_a_u=\\\"R2xheHk=:1ggLl2:uT1mx-CU7b8jXR8sLmOzzilNODs\\\"; a2873925c34ecbd2_gr_session_id=881ed190-8b14-4ca3-ae21-03ef46b92a49; a2873925c34ecbd2_gr_last_sent_sid_with_cs1=881ed190-8b14-4ca3-ae21-03ef46b92a49; a2873925c34ecbd2_gr_session_id_881ed190-8b14-4ca3-ae21-03ef46b92a49=true; Hm_lpvt_fa218a3ff7179639febdb15e372f411c=1546842805; a2873925c34ecbd2_gr_cs1=glaxy");
	        
//	        String code0 = code.replaceAll("\\\\n", "\\\\\\\\n");
//	        String code1 = code0.replaceAll("\n", "\\\\n");
//	        String code2 = code1.replaceAll("\"", "\\\\\"");
//	        String code3 = code2.replaceAll("\\\\n", "\\\\\\\\n");
	        System.out.println("ת���" + code);
	        code = code.substring(0,code.length() - 1);
	        code = code.substring(1,code.length());
	        String data = "{\"lang\":\"" + language +"\",\"typed_code\":\""+ code +"\",\"data_input\":\"\"}";
	        //System.out.println(conn.getRequestProperty("cookie"));
	        OutputStream os = conn.getOutputStream();
	        os.write(data.getBytes());
	        os.flush();
	        //System.out.print(data);
	        System.out.print("��Ӧ�룺" + conn.getResponseCode());
	        switch (conn.getResponseCode()) {
	        	case 200:
	        		InputStream is = conn.getInputStream();
	        		InputStream stream = new GZIPInputStream(conn.getInputStream());  
	        		String str = IOUtils.toString(stream,"utf-8");
	        		
	        		JSONObject result = JSONObject.fromObject(str);
	        		conn.disconnect();
	        		return (String) result.get("interpret_id");
	                
	        	default:
	        		InputStream is1 = conn.getErrorStream();
	        		StringBuffer out1 = new StringBuffer();
	                byte[] b1 = new byte[4096];
	                for (int i;(i=is1.read(b1)) != -1;) {
	                    out1.append(new String(b1,0,i));
	                }
	        		System.out.print(out1.toString());
	        		conn.disconnect();
	        		return "code!=200";
	        }
        
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "exception";
	}
	
	public static String get(String interpretId) {
		try {
			URL url = new URL("https://leetcode-cn.com/submissions/detail/" + interpretId + "/check/");
			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
			conn.setHostnameVerifier(new CustomizedHostnameVerifier());
			conn.setConnectTimeout(5000);
	        conn.setRequestMethod("GET");
	        conn.setDoOutput(true);
	        conn.setDoInput(true);
	        
	        switch (conn.getResponseCode()) {
        	case 200:
        		InputStream is = conn.getInputStream();
        		StringBuffer out = new StringBuffer();
                byte[] b = new byte[4096];
                for (int i;(i=is.read(b)) != -1;) {
                    out.append(new String(b,0,i));
                }
                
                if (out.toString().equals("")) {
					return "started";
				}
                
                JSONObject json = JSONObject.fromObject(out.toString());
                if (((String)json.get("state")).equals("SUCCESS")) {
					if ((Boolean)json.get("run_success")) {
						JSONArray jsonArray = (JSONArray)json.get("code_output");
						return "true$$" + jsonArray.toString();
					}else if (!(Boolean)json.get("run_success")) {
						String jsonResult = (String) json.get("compile_error");
						return "false$$" + jsonResult;
					}
                	
                	
				}else if (((String)json.get("state")).equals("STARTED")) {
					return "started";
				}
                
                return "pending";
        }
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "pending";
	}
}
