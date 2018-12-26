package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Qpsqmsmb;

public interface QpsqmsmbService {
/**
 * 
 * 方法名称: saveQpsqmsmb ；
 * 方法描述:  :   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:19:23；
 * @throws
 */
	void saveQpsqmsmb(Qpsqmsmb qpsqmsmb);
/**
 * 
 * 方法名称: queryQpsqkfmb ；
 * 方法描述:  :   ；
 * 返回类型: List<Qpsqmsmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:20:24；
 * @throws
 */
List<Qpsqmsmb> queryQpsqmsmb();
/**
 * 
 * 方法名称: queryQpsqkfmbById ；
 * 方法描述:  :   ；
 * 返回类型: Qpsqmsmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 上午10:20:57；
 * @throws
 */
Qpsqmsmb queryQpsqmsmbById(int contract_id);

/**
 * 方法名称: updateQpsqmsmb ；
 * 方法描述:  :   ；
 * 返回类型: boolean ；
 * 作者：Dawn Chen  ；
 * 时间：2017年11月24日 下午4:00:30；
 * @throws
 */
boolean updateQpsqmsmb(Qpsqmsmb qpsqmsmb);

}
