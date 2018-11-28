/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年10月10日上午11:41:44  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.ShiChangBuGuangGaoDao;
import com.aesc.pojo.ShiChangBuGuangGaoHeTong;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongMedia;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongTimes;
import com.aesc.service.ShiChangBuGuangGaoService;

/**  
 * ClassName:ShiChangBuGuangGaoServiceImpl <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年10月10日 上午11:41:44 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Transactional
@Service("ShiChangBuGuangGaoService")
public class ShiChangBuGuangGaoServiceImpl implements ShiChangBuGuangGaoService {

  @Resource
  private ShiChangBuGuangGaoDao ggDao;
  
  /**
   *实现类
   * @param gght
   * @param ggTimes
   * @param ggMedia
   * @see com.aesc.service.ShiChangBuGuangGaoService#saveHt(com.aesc.pojo.ShiChangBuGuangGaoHeTong, com.aesc.pojo.ShiChangBuGuangGaoHeTongTimes, com.aesc.pojo.ShiChangBuGuangGaoHeTongMedia)
   * 时间：2017年10月10日 下午4:43:11；
   */
  @Override
  public void saveHt(ShiChangBuGuangGaoHeTong gght, ShiChangBuGuangGaoHeTongTimes ggTimes,
      ShiChangBuGuangGaoHeTongMedia ggMedia) {
    //必须先存后得到id，否则id为0.如果写到set方法里id获取不一致
    ggDao.savegght(gght);
    int id = ggDao.getPrkId();
    ggTimes.setContract_id(id);
    ggDao.saveggTimes(ggTimes);
    ggMedia.setContract_id(id);
    ggDao.saveggMedia(ggMedia);
    
  }

  /**
   *实现类
   * @return
   * @see com.aesc.service.ShiChangBuGuangGaoService#queryGght()
   * 时间：2017年10月10日 下午4:48:35；
   */
  @Override
  public List<ShiChangBuGuangGaoHeTong> queryGght() {
      
    return this.ggDao.queryGght();
  }

  @Override
  public ShiChangBuGuangGaoHeTong queryGghtById(int contract_id) {
      
    return this.ggDao.queryGghtById(contract_id);
  }

  @Override
  public List<ShiChangBuGuangGaoHeTongTimes> queryGgtimesById(int contract_id) {
    ShiChangBuGuangGaoHeTongTimes ggTimes = ggDao.queryGgtimesById(contract_id);
    List<ShiChangBuGuangGaoHeTongTimes> ggTimeList = transverterGgTimeList(ggTimes);
    return ggTimeList;
  }

  @Override
  public List<ShiChangBuGuangGaoHeTongMedia> queryGgMediaById(int contract_id) {
    ShiChangBuGuangGaoHeTongMedia ggMedia = ggDao.queryGgMediaById(contract_id); 
    List<ShiChangBuGuangGaoHeTongMedia> ggMediaList = transverterGgMediaList(ggMedia);
    return ggMediaList;
  }

  /**
   * 方法名称: transverterGgTimeList ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<ShiChangBuGuangGaoHeTongTimes> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:56:42；
   * @throws
   */
  public List<ShiChangBuGuangGaoHeTongTimes> transverterGgTimeList (ShiChangBuGuangGaoHeTongTimes ggTimes){
    List<ShiChangBuGuangGaoHeTongTimes> ggTimeList = new ArrayList<ShiChangBuGuangGaoHeTongTimes>();
    if(ggTimes == null){
      return null;
    }else{
      String[] pay_year = ggTimes.getPay_year().split(",");
      String[] pay_month = ggTimes.getPay_month().split(",");
      String[] pay_day = ggTimes.getPay_day().split(",");
      String[] percents = ggTimes.getPercents().split(",");
      String[] amounts = ggTimes.getAmounts().split(",");
      String[] pay_upper = ggTimes.getPay_upper().split(",");
      for (int i = 0; i < pay_year.length; i++) {
        ShiChangBuGuangGaoHeTongTimes ggtime = new ShiChangBuGuangGaoHeTongTimes();
        ggtime.setPay_year(pay_year[i]);
        ggtime.setPay_month(pay_month[i]);
        ggtime.setPay_day(pay_day[i]);
        ggtime.setPercents(percents[i]);
        ggtime.setAmounts(amounts[i]);
        ggtime.setPay_upper(pay_upper[i]);
        ggTimeList.add(ggtime);
      }
    }
    return ggTimeList;
  }

/**
 * 方法名称: transverterGgMediaList ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<ShiChangBuGuangGaoHeTongMedia> ；
 * 作者：Dawn Chen  ；
 * 时间：2017年10月11日 上午9:56:52；
 * @throws
 */
public List<ShiChangBuGuangGaoHeTongMedia> transverterGgMediaList (ShiChangBuGuangGaoHeTongMedia ggMedia){
  List<ShiChangBuGuangGaoHeTongMedia> ggMediaList = new ArrayList<ShiChangBuGuangGaoHeTongMedia>();
  if(ggMedia == null){
    return null;
  }else{
    String[] media_serial = ggMedia.getMedia_serial().split(",");
    String[] location = ggMedia.getLocation().split(",");
    String[] media_type = ggMedia.getMedia_type().split(",");
    String[] media_specification = ggMedia.getMedia_specification().split(",");
    String[] media_number = ggMedia.getMedia_number().split(",");
    String[] release_time = ggMedia.getRelease_time().split(",");
    String[] release_fee = ggMedia.getRelease_fee().split(",");
    String[] production_cost = ggMedia.getProduction_cost().split(",");
    for (int i = 0; i < media_serial.length; i++) {
      ShiChangBuGuangGaoHeTongMedia ggmedia = new ShiChangBuGuangGaoHeTongMedia();
      ggmedia.setMedia_serial(media_serial[i]);
      ggmedia.setLocation(location[i]);
      ggmedia.setMedia_type(media_type[i]);
      ggmedia.setMedia_specification(media_specification[i]);
      ggmedia.setMedia_number(media_number[i]);
      ggmedia.setRelease_time(release_time[i]);
      ggmedia.setRelease_fee(release_fee[i]);
      ggmedia.setProduction_cost(production_cost[i]);
      ggMediaList.add(ggmedia);
    }
  }
  return ggMediaList;
}

}