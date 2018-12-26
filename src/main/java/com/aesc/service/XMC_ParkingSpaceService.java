/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ParkingSpaceService.java  
 * Package Name:com.aesc.service  
 * Date:2018年12月18日上午11:11:58  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.XMC_ParkingSpace;

/**  
 * description：
 * ClassName:XMC_ParkingSpaceService <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2018年12月18日 上午11:11:58 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface XMC_ParkingSpaceService {

  void saveParkingSpace(XMC_ParkingSpace parkingSpace);

  List<XMC_ParkingSpace> queryParkingSpace();

  XMC_ParkingSpace queryParkingSpaceById(int contract_id);

  boolean updateParkingSpace(XMC_ParkingSpace parkingSpace);

}
