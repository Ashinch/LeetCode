package util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**************************
* ˵����    ���乤����
***************************
* ������    ReflectFactory
* ������    util
***************************/
public class ReflectFactory {
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��ȡ��Ӧ���������� ? �ַ���
	 * ��������	getFiledNamesValue
	 **************************************************
	 * ������
	 * @param obj 		����
	 * @param method 	ģʽѡ��0Ϊvalues(?,?,?,?)��1Ϊusername=?,password=?
	 * @return String 	��ʽ��������ַ���
	 **************************************************/
	public static String getFiledNamesValue(Object obj, int method) {
		String str = "";
		
		if (method == 0) {
			
			Field[] fields = obj.getClass().getDeclaredFields();
			
			for(int i=0;i<fields.length-2;i++) {
	        	if (i != fields.length-3) {
	        		str += "?,";
	        	}else {
	        		str += "?";
	        	}
	        }
			
		}else if (method ==1) {
			
			String[] fields = getFiledNames(obj);
			
			for(int i=0;i<fields.length-2;i++) {
	        	if (i != fields.length-3) {
	        		str += fields[i+2]+ "=?,";
	        	}else {
	        		str += fields[i+2] + "=?";
	        	}
	        }  
			
		}
        
        return str; 
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��ȡ��Ӧ���������� key �ֶ�
	 * ��������	getFiledNamesKey
	 **************************************************
	 * ������
	 * @param obj		����
	 * @return String 	���ض����������id������ֶ��ַ�����username,password,face
	 **************************************************/
	public static String getFiledNamesKey(Object obj) {
		String[] keys = getFiledNames(obj);
		String str = "(";
        for(int i=0;i<keys.length-2;i++) {
        	if (i != keys.length-3) {
        		str += keys[i+2] + ",";
        	}else {
        		str += keys[i+2] + ")";
        	}
        }  
        
        return str; 
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��ȡ�����������б�
	 * ��������	getFiledNames
	 **************************************************
	 * ������
	 * @param obj 			����
	 * @return String[] 	��������������String����
	 **************************************************/
	public static String[] getFiledNames(Object obj){
        Field[] fields=obj.getClass().getDeclaredFields();
        String[] fieldNames=new String[fields.length];
        for(int i=0;i<fields.length;i++){
            fieldNames[i]=fields[i].getName();
        }
        return fieldNames;
    }
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	�������ж�д����������ȡ��Ӧ��ֵ
	 * ��������	getFieldValueByName
	 **************************************************
	 * ������
	 * @param obj 			����
	 * @param fieldName 	������
	 * @return Object 		���ض�Ӧ���Ե�ֵ
	 **************************************************/
	public static Object getFieldValueByName(Object obj, String fieldName) {  
        try {    
            String firstLetter = fieldName.substring(0, 1).toUpperCase();
            String getter = "get" + firstLetter + fieldName.substring(1);
            Method method = obj.getClass().getMethod(getter, new Class[] {});
            Object value = method.invoke(obj, new Object[] {});
            
            return value;
        } catch (Exception e) {
        	e.printStackTrace();
        }
        return null;  
    }
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	ͨ����д����������������ֵ
	 * ��������	setFieldsetter
	 **************************************************
	 * ������
	 * @param obj 			����
	 * @param fieldName 	������
	 * @param fieldValue 	����ֵ
	 * @return Object 		���ض�����
	 **************************************************/
	public static Object setFieldsetter(Object obj, String fieldName, Object fieldValue) {
		try {
            String methodStr = "set" + fieldName.toUpperCase().substring(0, 1) + fieldName.substring(1);
            System.out.println(methodStr);
            Field field = obj.getClass().getDeclaredField(fieldName);
            Method method = obj.getClass().getMethod(methodStr,new Class[]{field.getType()});
            
            //  ֻ֧�� String Integer ��������
            if(field.getType().getSimpleName().equals("String")){
                method.invoke(obj, (String) fieldValue);
            }else if(field.getType().getSimpleName().equals("Integer")){
                method.invoke(obj, (Integer) fieldValue);
            }
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        return obj;
    }
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��ȡ���е���������
	 * ��������	getFieldTypeByName
	 **************************************************
	 * ������
	 * @param obj 			����
	 * @param fieldName 	������
	 * @return String 		���ظ�ʽ�����������
	 **************************************************/
	public static String getFieldTypeByName(Object obj, String fieldName) {
		String type = "null";
		try {
			Field field=obj.getClass().getDeclaredField(fieldName);
			
			if (field.getGenericType().toString().equals("class java.lang.String")) {
				type="Stirng";
			}else if(field.getGenericType().toString().equals("int")) {
				type="Integer";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return type;
	}
}
