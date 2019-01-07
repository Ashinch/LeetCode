package util;

import javax.net.ssl.*;

public class CustomizedHostnameVerifier implements HostnameVerifier{
	public boolean verify(String arg0,SSLSession arg1) {
		
		return true;
	}
}
