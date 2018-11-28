/**  
 * Project Name:aescContract  
 * File Name:EncoderMD5.java  
 * Package Name:com.aesc.utils  
 * Date:2017年9月15日上午10:13:44  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/**
 * ClassName:EncoderMD5 <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年9月15日 上午10:13:44 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class EncoderMD5 {
  // main测试
  public static void main(String[] args) {
    String result = getMD5("admin");
    System.err.println(result);
    List<String> list = new ArrayList<String>();
    list.add("1");
    list.add("2");
    for (String item : list) {
    if ("2".equals(item)) {
    list.remove(item);
    }
    }
    System.out.println(list);
    
  }

  /**
   * 方法名称: getMD5 ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月15日 上午10:38:32；
   * @throws
   */
  public static String getMD5(String message) {
    String md5str = "";
    try {
      // 1 创建一个提供信息摘要算法的对象，初始化为md5算法对象
      MessageDigest md = MessageDigest.getInstance("MD5");
      // 2 将消息变成byte数组
      byte[] input = message.getBytes();
      // 3 计算后获得字节数组,这就是那128位了
      byte[] buff = md.digest(input);
      // 4 把数组每一字节（一个字节占八位）换成16进制连成md5字符串
      md5str = bytesToHex(buff);
    } catch (NoSuchAlgorithmException e) {
      e.printStackTrace();
    }
    return md5str;
  }

  /**
   * 方法名称: bytesToHex ；
   * 方法描述:  TODO: 二进制转十六进制  ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月15日 上午10:38:24；
   * @throws
   */
  public static String bytesToHex(byte[] bytes) {
    StringBuffer md5str = new StringBuffer();
    // 把数组每一字节换成16进制连成md5字符串
    int digital;
    for (int i = 0; i < bytes.length; i++) {
      digital = bytes[i];
      if (digital < 0) {
        digital += 256;
      }
      if (digital < 16) {
        md5str.append("0");
      }
      md5str.append(Integer.toHexString(digital));
    }
    return md5str.toString().toUpperCase();
  }
  
}
