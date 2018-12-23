package util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/**************************
* 说明：    Gzip工厂类
***************************
* 类名：    GzipFactory
* 包名：    util
***************************/
public class GzipFactory {
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	Gzip压缩
	 * 方法名：	compress
	 **************************************************
	 * 参数表：
	 * @param str		要压缩的String
	 * @param encoding	编码
	 * @return 	byte[]	返回压缩后的byte[]
	 **************************************************/
	public static byte[] compress(String str, String encoding) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        GZIPOutputStream gzip;
        try {
            gzip = new GZIPOutputStream(out);
            gzip.write(str.getBytes(encoding));
            gzip.close();
        } catch ( Exception e) {
            e.printStackTrace();
        }
        return out.toByteArray();
    }
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	Gzip解压
	 * 方法名：	uncompress
	 **************************************************
	 * 参数表：
	 * @param bytes		要解压的byte[]
	 * @param encoding  编码
	 * @return 	String	返回解压后的String
	 **************************************************/
	public static String uncompress(byte[] bytes, String encoding) {
		if (bytes == null || bytes.length == 0) {
			return null;
		}
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		ByteArrayInputStream in = new ByteArrayInputStream(bytes);
		try {
			GZIPInputStream ungzip = new GZIPInputStream(in);
			byte[] buffer = new byte[256];
			int n;
			while ((n = ungzip.read(buffer)) >= 0) {
				out.write(buffer, 0, n);
			}
			return out.toString(encoding);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
