/**  
 * Project Name:aescContract  
 * File Name:LinShiYongFangXinZengDao.java  
 * Package Name:com.aesc.dao  
 * Date:2018年10月24日上午11:28:20  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.LinShiYongFangXinZeng;
import com.aesc.pojo.LinShiYongFangXinZengDate;

/**  
 * description：
 * ClassName:LinShiYongFangXinZengDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2018年10月24日 上午11:28:20 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

public interface LinShiYongFangXinZengDao {

  /**
   * 
   * 方法名称: saveLsyf_xz ；
   * description:  保存
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:28:30；
   * @throws
   */
  void saveLsyf_xz(LinShiYongFangXinZeng lsyf_xz);

  /**
   * 
   * 方法名称: queryLinShiYongFangXinZeng ；
   * description:  查询所有合同信息
   * 返回类型: List<LinShiYongFangXinZeng> ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:29:26；
   * @throws
   */
  List<LinShiYongFangXinZeng> queryLinShiYongFangXinZeng();

  /**
   * 
   * 方法名称: saveLsyf_xzDate ；
   * description: 保存合同日期信息
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:34:31；
   * @throws
   */
  void saveLsyf_xzDate(List<LinShiYongFangXinZengDate> lsyfDateList);
  
  /**
   * 
   * 方法名称: queryLinShiYongFangXinZengById ；
   * description:  通过id查询合同信息
   * 返回类型: LinShiYongFangXinZeng ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:31:33；
   * @throws
   */
  LinShiYongFangXinZeng queryLinShiYongFangXinZengById(int contract_id);

  int getLsyf_xz_Id();

  /**
   * 
   * 方法名称: queryLsyfDateById ；
   * description:  通过ID查询合同日期
   * 返回类型: List<LinShiYongFangXinZengDate> ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:30:10；
   * @throws
   */
  List<LinShiYongFangXinZengDate> queryLsyfDateById(int contract_id);


  /**
   * 
   * 方法名称: updateLsyf_xz ；
   * description:  修改合同信息
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:36:26；
   * @throws
   */
  boolean updateLsyf_xz(LinShiYongFangXinZeng lsyf_xz);

  /**
   * 
   * 方法名称: updateLsyf_xz_Date ；
   * description:  修改合同日期信息
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2018年12月3日 下午2:36:41；
   * @throws
   */
  boolean updateLsyf_xz_Date(LinShiYongFangXinZengDate lsyfxz);

}
  
