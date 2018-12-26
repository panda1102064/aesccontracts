/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ExhibitionHallService.java  
 * Package Name:com.aesc.service  
 * Date:2018年12月19日上午10:26:37  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.XMC_ExhibitionHall;
import com.aesc.pojo.XMC_ExhibitionHallDate;

/**  
 * description：
 * ClassName:XMC_ExhibitionHallService <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2018年12月19日 上午10:26:37 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface XMC_ExhibitionHallService {

  void saveExhibitionHall(XMC_ExhibitionHall exhibitionHall);

  void saveExhibitionHallDate(XMC_ExhibitionHallDate exhibitionHallDate);

  List<XMC_ExhibitionHallDate> transverterExhibitionHallDateList(XMC_ExhibitionHallDate exhibitionHallDate);

  List<XMC_ExhibitionHall> queryExhibitionHall();

  XMC_ExhibitionHall queryExhibitionHallById(int contract_id);

  List<XMC_ExhibitionHallDate> queryExhibitionHallDateById(Integer contract_id);

  boolean updateExhibitionHall(XMC_ExhibitionHall exhibitionHall);

  boolean updateExhibitionHallDate(XMC_ExhibitionHallDate exhibitionHallDate);

}
