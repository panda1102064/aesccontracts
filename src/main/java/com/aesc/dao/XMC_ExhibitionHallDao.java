/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ExhibitionHallDao.java  
 * Package Name:com.aesc.dao  
 * Date:2018年12月19日上午10:29:39  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.XMC_ExhibitionHall;
import com.aesc.pojo.XMC_ExhibitionHallDate;

/**  
 * description：
 * ClassName:XMC_ExhibitionHallDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2018年12月19日 上午10:29:39 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface XMC_ExhibitionHallDao {

  void saveExhibitionHall(XMC_ExhibitionHall exhibitionHall);

  void saveExhibitionHallDate(List<XMC_ExhibitionHallDate> exhibitionHallDateList);

  int getExhibitionHallId();

  List<XMC_ExhibitionHall> queryExhibitionHall();

  XMC_ExhibitionHall queryExhibitionHallById(int contract_id);

  List<XMC_ExhibitionHallDate> queryExhibitionHallDateById(Integer contract_id);

  boolean updateExhibitionHall(XMC_ExhibitionHall exhibitionHall);

  void updateExhibitionHallDate(XMC_ExhibitionHallDate exhibitionHall);

}
