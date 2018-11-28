/**  
 * Project Name:aescContract  
 * File Name:AsciiUtil.java  
 * Package Name:com.aesc.utils  
 * Date:2017年9月29日下午5:10:02  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.utils;

import java.io.UnsupportedEncodingException;

/**  
 * ClassName:AsciiUtil <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年9月29日 下午5:10:02 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public class AsciiUtil {
  public static void main(String[] args) throws UnsupportedEncodingException {
    /*String str = "中华人民共和国";
    System.out.println(str);
    byte[] b = str.getBytes();
    for (int i = 0; i < b.length; i++) {
            System.out.print(Integer.toHexString(b[i] & 0xff) + " "); 
    }
    System.out.println();*/
    
          // asciiToString(251);//ASCII转换为字符串
          // stringToAscii("√");//字符串转换为ASCII码
    /**
     * 0xFF转化成8位二进制就是11111111
     * 原码 反码 补码这三个概念
                      对于正数（00000001）原码来说，首位表示符号位，反码 补码都是本身
                      对于负数（100000001）原码来说，反码是对原码除了符号位之外作取反运算即（111111110），补码是对反码作+1运算即（111111111）
                      概念就这么简单。
     */
    byte[] a = new byte[10];
    a[0]= -127;
    System.out.println(a[0]);
    int c = a[0]&0xff;
    System.out.println(c);
    
    
    String s = "\\u9519";
    try {
        byte[] d = s.getBytes("UTF-8");
        System.out.println(new String(d, "UTF-8"));
    } catch (Exception e) {
e.printStackTrace();
}
    
    
    
   
    
    
       }
       
  
  
  
  
  
  
  
  
  
  
  
  
       public static void asciiToString(int num){
           System.out.println(num +" -> "+(char)num);
       }
       
       public static void stringToAscii(String str){
           char[]chars=str.toCharArray();
           for(int i=0;i<chars.length;i++){
               System.out.println(chars[i]+" -> "+(int)chars[i]);
           }
       }
}
  
