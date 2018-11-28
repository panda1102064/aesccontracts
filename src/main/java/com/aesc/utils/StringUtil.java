/**  
 * Project Name:aescContract  
 * File Name:StringUtil.java  
 * Package Name:com.aesc.utils  
 * Date:2017年8月28日上午10:15:22  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * ClassName:StringUtil <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年8月28日 上午10:15:22 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class StringUtil {

  /**
   * 方法名称: getJsonStr ； 方法描述: TODO: ； 返回类型: String ； 作者：Dawn Chen ； 时间：2017年8月28日
   * 上午10:15:43； @throws
   */
  public static String getJsonStr(Map<String, String> objMap) {
    StringBuffer s = new StringBuffer();
    s.append("{\"items\":[");
    if (objMap != null) {
      for (String key : objMap.keySet()) {
        String val = objMap.get(key);
        s.append("{\"").append(key).append("\":\"").append(val).append("\"},");
      }
    }
    if (s.toString().endsWith(",")) {
      s = new StringBuffer(s.substring(0, s.length() - 1));
    }
    s.append("]}");
    return s.toString();
  }

  /**
   * 方法名称: getSysTime ； 方法描述: TODO: ； 返回类型: String ； 作者：Dawn Chen ； 时间：2017年8月28日
   * 上午10:16:10； @throws
   */
  public static String getSysTime() {

    Date date = new Date();
    SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    return simple.format(date);
  }
}
