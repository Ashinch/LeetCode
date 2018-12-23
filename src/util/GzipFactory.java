package util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/**************************
* ˵����    Gzip������
***************************
* ������    GzipFactory
* ������    util
***************************/
public class GzipFactory {
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	Gzipѹ��
	 * ��������	compress
	 **************************************************
	 * ������
	 * @param str		Ҫѹ����String
	 * @param encoding	����
	 * @return 	byte[]	����ѹ�����byte[]
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
	 * �޶�����	���� ��̬
	 * ˵����	Gzip��ѹ
	 * ��������	uncompress
	 **************************************************
	 * ������
	 * @param bytes		Ҫ��ѹ��byte[]
	 * @param encoding  ����
	 * @return 	String	���ؽ�ѹ���String
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
