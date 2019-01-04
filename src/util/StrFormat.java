package util;

public class StrFormat {
	public static String maxLength(String str,int length) {
		if (str.length() > length) {
			return str.substring(0,8) + "бн";
		}
		
		return str;
	}
}
