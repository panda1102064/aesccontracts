/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ParkingSpaceServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2018年12月18日上午11:13:25  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.XMC_ParkingSpaceDao;
import com.aesc.pojo.XMC_ParkingSpace;
import com.aesc.service.XMC_ParkingSpaceService;

/**  
 * description：
 * ClassName:XMC_ParkingSpaceServiceImpl <br/>  
 * Function:  
 * Reason: 
 * Date:     2018年12月18日 上午11:13:25 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("XMC_ParkingSpaceService")
public class XMC_ParkingSpaceServiceImpl implements XMC_ParkingSpaceService {

  @Resource
  private XMC_ParkingSpaceDao parkingSpaceDao;

  @Override
  public void saveParkingSpace(XMC_ParkingSpace parkingSpace) {
    parkingSpaceDao.saveParkingSpace(parkingSpace);
  }

  @Override
  public List<XMC_ParkingSpace> queryParkingSpace() {
    return this.parkingSpaceDao.queryParkingSpace();
  }

  @Override
  public XMC_ParkingSpace queryParkingSpaceById(int contract_id) {
    return this.parkingSpaceDao.queryParkingSpaceById(contract_id);
  }

  @Override
  public boolean updateParkingSpace(XMC_ParkingSpace parkingSpace) {
    return this.parkingSpaceDao.updateParkingSpace(parkingSpace);
  }
}
  
