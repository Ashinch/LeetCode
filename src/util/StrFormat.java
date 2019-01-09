package util;

public class StrFormat {
	public static String maxLength(String str,int length){
		if (str.getBytes().length >= length) {
			return str.substring(0,length/2 - 2) + "бн";
		}
		
		return str;
	}
}
