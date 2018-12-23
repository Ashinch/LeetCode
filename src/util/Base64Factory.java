package util;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.binary.Base64;

/**************************
* 说明：    Base64工厂类
***************************
* 类名：    Base64Factory
* 包名：    util
***************************/
public class Base64Factory {
	//  指定编码格式
	private static final String UTF_8 = "UTF-8";
	
	
    /**************************************************
     * 限定符：	公开 静态
     * 说明：	Base64解码
     * 方法名：	decodeData
     **************************************************
     * 参数表：
     * @param inputData  	需要解码的String
     * @return 	String	  	返回解码后的String
     **************************************************/
    public static String decodeData(String inputData) {
        try {
            if (null == inputData) {
                return null;
            }
            return new String(Base64.decodeBase64(inputData.getBytes(UTF_8)), UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        
        return null;
    }

    
    /**************************************************
     * 限定符：	公开 静态
     * 说明：	Base64编码
     * 方法名：	encodeData
     **************************************************
     * 参数表：
     * @param inputData 	需要编码的String
     * @return 	String		返回编码后的String
     **************************************************/
    public static String encodeData(String inputData) {
        try {
            if (null == inputData) {
                return null;
            }
            return new String(Base64.encodeBase64(inputData.getBytes(UTF_8)), UTF_8);
        } catch (UnsupportedEncodingException e) {
        	e.printStackTrace();
        }
        return null;
    }
}
