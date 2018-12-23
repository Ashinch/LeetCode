package util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**************************
* 说明：    反射工厂类
***************************
* 类名：    ReflectFactory
* 包名：    util
***************************/
public class ReflectFactory {
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	获取对应属性数量的 ? 字符串
	 * 方法名：	getFiledNamesValue
	 **************************************************
	 * 参数表：
	 * @param obj 		对象
	 * @param method 	模式选择，0为values(?,?,?,?)，1为username=?,password=?
	 * @return String 	格式化后参数字符串
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
	 * 限定符：	公开 静态
	 * 说明：	获取对应属性数量的 key 字段
	 * 方法名：	getFiledNamesKey
	 **************************************************
	 * 参数表：
	 * @param obj		对象
	 * @return String 	返回对象除表名和id以外的字段字符串：username,password,face
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
	 * 限定符：	公开 静态
	 * 说明：	获取类中属性名列表
	 * 方法名：	getFiledNames
	 **************************************************
	 * 参数表：
	 * @param obj 			对象
	 * @return String[] 	返回所有属性名String数组
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
	 * 限定符：	公开 静态
	 * 说明：	根据类中读写器属性名获取对应的值
	 * 方法名：	getFieldValueByName
	 **************************************************
	 * 参数表：
	 * @param obj 			对象
	 * @param fieldName 	属性名
	 * @return Object 		返回对应属性的值
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
	 * 限定符：	公开 静态
	 * 说明：	通过读写器属性名设置属性值
	 * 方法名：	setFieldsetter
	 **************************************************
	 * 参数表：
	 * @param obj 			对象
	 * @param fieldName 	属性名
	 * @param fieldValue 	属性值
	 * @return Object 		返回对象本身
	 **************************************************/
	public static Object setFieldsetter(Object obj, String fieldName, Object fieldValue) {
		try {
            String methodStr = "set" + fieldName.toUpperCase().substring(0, 1) + fieldName.substring(1);
            System.out.println(methodStr);
            Field field = obj.getClass().getDeclaredField(fieldName);
            Method method = obj.getClass().getMethod(methodStr,new Class[]{field.getType()});
            
            //  只支持 String Integer 两种类型
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
	 * 限定符：	公开 静态
	 * 说明：	获取类中的属性类型
	 * 方法名：	getFieldTypeByName
	 **************************************************
	 * 参数表：
	 * @param obj 			对象
	 * @param fieldName 	属性名
	 * @return String 		返回格式化后的类型名
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
