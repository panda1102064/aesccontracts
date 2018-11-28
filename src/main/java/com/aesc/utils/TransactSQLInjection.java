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
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年9月15日 下午1:27:22 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class TransactSQLInjection {

  /**
   * 方法名称: sqlInjection ； 方法描述: TODO:防止SQL注入 ； 返回类型: String ； 作者：Dawn Chen ； 时间：2017年9月15日
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
    // return str.replaceAll(".*([';]+|(--)+).*","");
    // return
    // str.replaceAll("'|(and|or)\\b.+?(>|<|=|in|like)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)","");
  }

  /**
   * 过滤方式一
   */
  // 过滤 ‘
  // ORACLE 注解 -- /**/
  // 关键字过滤 update ,delete

  // static String reg = "(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|"
  // +
  // "(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)";

  // static Pattern sqlPattern = Pattern.compile(reg, Pattern.CASE_INSENSITIVE);

  /***************************************************************************
   * 参数校验
   * 
   * @param str
   * 
   *          public static boolean isValid(String str) {
   */

  /*
   * String qurystr = req.getQueryString()==null?"": req.getQueryString();
   * 
   * 
   * if (!qurystr.equals("")) { try { qurystr = java.net.URLDecoder.decode(qurystr); } catch
   * (Exception e1) { qurystr = httpReq.getRequestURI(); } } if (sqlPattern.matcher(str).find()) {
   * 
   * System.err.println("检查到非法字符，未能通过过滤器!");
   * 
   * return false; } return true; }
   */

  /**
   * return str.replaceAll(".*([';]+|(--)+).*",""); 过滤方式二
   * 
   * private static final String GETFILTER=
   * "'|(and|or)\\b.+?(>|<|=|in|like)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
   * private static final String POSTFILTER =
   * "\\b(and|or)\\b.{1,6}?(=|>|<|\\bin\\b|\\blike\\b)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
   * private static final String COOKIEFILTER =
   * "\\b(and|or)\\b.{1,6}?(=|>|<|\\bin\\b|\\blike\\b)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
   * 
   * public static void main(String[] args) { String url = "http://javaweb.org/show.jsp?id=1'";
   * System.out.println(Pattern.compile(GETFILTER).matcher(url).find()); }
   */
}
