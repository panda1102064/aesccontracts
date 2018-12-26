/**  
 * Project Name:aescContract  
 * File Name:TransactSQLInjection.java  
 * Package Name:com.aesc.utils  
 * Date:2017年9月15日下午1:27:22  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.utils;

//import java.util.regex.Pattern;

/**
 * ClassName:TransactSQLInjection <br/>
 * Function:  ADD FUNCTION. <br/>
 * Reason:  ADD REASON. <br/>
 * Date: 2017年9月15日 下午1:27:22 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class TransactSQLInjection {

  /**
   * 方法名称: sqlInjection ； 方法描述: :防止SQL注入 ； 返回类型: String ； 作者：Dawn Chen ； 时间：2017年9月15日
   * 下午1:28:54； @throws
   */
  public static String sqlInjection(String str) {
    String move1 = "";
    String move2 = "";
    String move3 = "";
    String move4 = "";
    move1 = str.replaceAll(".*([';]+|(--)+).*", "");
    move2 = move1.replaceAll(
        "'|(and|or)\\b.+?(>|<|=|in|like)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)",
        "");
    move3 = move2.replaceAll(
        "\\b(and|or)\\b.{1,6}?(=|>|<|\\bin\\b|\\blike\\b)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)",
        "");
    move4 = move3.replaceAll(
        "(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)",
        "");
    return move4;
  }
}
