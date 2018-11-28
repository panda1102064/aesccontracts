package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Qpsqmsmb;

public interface QpsqmsmbDao {
  
/**
 * 方法名称: saveQpsqmsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:25:17；
 * @throws
 */
	void saveQpsqmsmb(Qpsqmsmb qpsqmsmb);
	
/**
 * 方法名称: queryQpsqkfmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<Qpsqmsmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:25:21；
 * @throws
 */
	List<Qpsqmsmb> queryQpsqmsmb();
	
/**
 * 方法名称: queryQpsqkfmbById ；
 * 方法描述:  TODO:   ；
 * 返回类型: Qpsqmsmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:25:24；
 * @throws
 */
	Qpsqmsmb queryQpsqmsmbById(int contract_id);
	
	/**
	 * 方法名称: updateQpsqmsmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月24日 下午4:01:27；
	 * @throws
	 */
boolean updateQpsqmsmb(Qpsqmsmb qpsqmsmb);

}
