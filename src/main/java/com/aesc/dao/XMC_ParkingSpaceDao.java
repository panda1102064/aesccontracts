/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ParkingSpaceDao.java  
 * Package Name:com.aesc.dao  
 * Date:2018年12月18日上午11:14:34  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.XMC_ParkingSpace;

/**  
 * description：
 * ClassName:XMC_ParkingSpaceDao <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年12月18日 上午11:14:34 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface XMC_ParkingSpaceDao {

  void saveParkingSpace(XMC_ParkingSpace parkingSpace);

  List<XMC_ParkingSpace> queryParkingSpace();

  XMC_ParkingSpace queryParkingSpaceById(Integer contract_id);

  boolean updateParkingSpace(XMC_ParkingSpace parkingSpace);

}
  
