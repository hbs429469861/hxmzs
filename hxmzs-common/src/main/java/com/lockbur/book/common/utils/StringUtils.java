package com.lockbur.book.common.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {

	public static boolean isBlank(String str){
		return str == null || str.trim().length()<=0;
	}
	
	public static boolean isBlank(Object object){
		boolean flag = false;
        if (null == object) {
            flag = true;
        } else {
            if(isBlank(String.valueOf(object))){
            	 flag = true;
            }
        }
        return flag;
	}
	
	public static boolean isNotBlank(String str){
		return str != null && str.trim().length()>0; 
	}
	
	/**
	 * 格式化字符串
	 */
	public static String formatString(String text) {
		return (text == null ? "" : text.trim());
	}

	/**
	 * String2Integer
	 */
	public static int string2Int(String text) throws NumberFormatException {
		return text == null ? 0 : Integer.valueOf(text);
	}

	/**
	 * 处理字符串：隐藏部分内容
	 * @param text	目标字符串
	 * @param leftShowCount 左边显示位数
	 * @param rightShowCount 右边显示位数
	 * @return
	 */
	public static String hideString(String text, int leftShowCount, int rightShowCount) {
		StringBuffer sb = new StringBuffer();
		if(text != null && text.length() >= leftShowCount + rightShowCount ){
			sb.append(text.substring(0, leftShowCount));
			for (int i = 0; i < text.length() - leftShowCount - rightShowCount; i++) {
				sb.append("*");
			}
			sb.append(text.substring(text.length() - rightShowCount));
		}
		return sb.toString();
	}
	
	/**处理姓名*/
	public static String handleName(String text){
		return StringUtils.hideString(text, 0, 1);
	}
	
	/**处理证件号*/
	public static String handleIdCardNo(String text){
		return StringUtils.hideString(text, 2, 2);
	}
	
	/**处理银行卡号*/
	public static String handleBankCardNo(String text){
		return StringUtils.hideString(text, 3, 3);
	}
	
	/**处理手机号*/
	public static String handlePhoneNo(String text){
		return StringUtils.hideString(text, 0, 2);
	}
	
	/**
	  * @Description: 去空格
	  * @Param
	  * @Return String
	  * @Author:youhuiran
	  * @Datetime 2016年12月4日 下午10:04:36
	 */
	public static String replaceBlank(String str) {
        String dest = "";
        if (str!=null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(str);
            dest = m.replaceAll("");
        }
        return dest;
    }
}
