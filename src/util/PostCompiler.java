package util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import net.sf.json.JSONObject;

public class PostCompiler {
	public static String jsonString = "";
	
	public static String beginCompiler(String language, String code) {
		if (language.equals("c")) {
			language = "7";
		}else if (language.equals("c++")) {
			language = "7";
		}else if (language.equals("java")) {
			language = "23";
		}else if (language.equals("c#")) {
			language = "7";
		}else if (language.equals("python2")) {
			language = "7";
		}else if (language.equals("python3")) {
			language = "7";
		}else if (language.equals("go")) {
			language = "7";
		}else if (language.equals("lua")) {
			language = "7";
		}else if (language.equals("r")) {
			language = "7";
		}else if (language.equals("swift")) {
			language = "7";
		}else if (language.equals("f#")) {
			language = "7";
		}else if (language.equals("objective-c")) {
			language = "7";
		}
		
		try {
			URL url = new URL("http://runcode-api2-ng.dooccn.com/compile2");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setConnectTimeout(5000);
            conn.setRequestMethod("POST");
            conn.setUseCaches(false);
            conn.setDoOutput(true);
            conn.setDoInput(true);

            String data = "language=" + language + "&code=" + URLEncoder.encode(Base64Code.encodeData(code),"utf-8");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
            conn.setRequestProperty("Origin", "http://www.dooccn.com");
            conn.setRequestProperty("Host", "runcode-api2-ng.dooccn.com");
            conn.setRequestProperty("Connection", "keep-alive");
            conn.setRequestProperty("Content-Length", "135");
            conn.setRequestProperty("Accept", "*/*");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Mobile Safari/537.36");
            conn.setRequestProperty("Referer", "http://www.dooccn.com/c/");
            conn.setRequestProperty("Accept-Encoding", "gzip, deflate");
            conn.setRequestProperty("Accept-Language", "zh-CN,zh;q=0.9");
                        
            OutputStream os = conn.getOutputStream();
            os.write(data.getBytes());
            os.flush();
            
            
            switch (conn.getResponseCode()) {
	            case 200:
	            	InputStream is = conn.getInputStream();
	            	ByteArrayOutputStream swapStream = new ByteArrayOutputStream(); 
	            	byte[] buff = new byte[100]; //buff用于存放循环读取的临时数据 
	            	int rc = 0; 
	            	
	            	while ((rc = is.read(buff, 0, 100)) > 0) { 
	            		swapStream.write(buff, 0, rc); 
	            	} 
	            	
	            	byte[] in_b = swapStream.toByteArray();
	            	jsonString = Gzip.uncompress(in_b, "utf-8");
	                conn.disconnect(); // 销毁连接  
	
	                break;
	
	            case 404:
	            	jsonString = "未找到请求服务器页面！";
	                break;
	
	            case 500:
	            	jsonString = "服务器遇到错误，无法完成请求!";
	                break;
	
	            default:
	            	jsonString = "请求错误!";
	                break;
	        }
            
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (jsonString.equals("未找到请求服务器页面！") || 
				jsonString.equals("服务器遇到错误，无法完成请求!") || 
				jsonString.equals("请求错误!")) {
			return jsonString;
		}
		
		JSONObject obj = JSONObject.fromObject(jsonString);
		String result = (String) obj.get("output");
		return result;
	}
}
