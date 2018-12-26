package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Qpsqkfmb;

public interface QpsqkfmbService {
/**
 * 方法名称: saveQpsqkfmb ；
 * 方法描述:  :   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月9日 上午11:36:43；
 * @throws
 */
	void saveQpsqkfmb(Qpsqkfmb qpsqkfmb);
/**
 * 方法名称: queryQpsqkfmb ；
 * 方法描述:  :   ；
 * 返回类型: List<Qpsqkfmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月9日 上午11:49:56；
 * @throws
 */
List<Qpsqkfmb> queryQpsqkfmb();
/**
 * 方法名称: queryQpsqkfmbById ；
 * 方法描述:  :   ；
 * 返回类型: Qpsqkfmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月9日 上午11:57:18；
 * @throws
 */
Qpsqkfmb queryQpsqkfmbById(int contract_id);

/**
 * 方法名称: updateQpsqkfmb ；
 * 方法描述:  :   ；
 * 返回类型: boolean ；
 * 作者：Dawn Chen  ；
 * 时间：2017年11月6日 下午4:18:23；
 * @throws
 */
boolean updateQpsqkfmb(Qpsqkfmb qpsqkfmb);

}
