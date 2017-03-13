package com.exam.util;

public class StringUtil {
	public static String entityString(String string){
		String replace = string.replace("<", "&lt;");
		String replace2 = replace.replace(">", "&gt;");
		String replace3 = replace2.replace("\"", "&quot;");
		return replace3;
	}
	
	/*public static void main(String[] args) {
		String entityString = StringUtil.entityString("<h\"r>");
		System.out.println(entityString);
	}*/
}
