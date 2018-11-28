package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Qpeqmsmb;

public interface QpeqmsmbService {
/**
 * 方法名称: saveQpeqmsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月8日 下午2:47:31；
 * @throws
 */
	void saveQpeqmsmb(Qpeqmsmb qpeqmsmb);
/**
 * 方法名称: queryQpeqmsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<Qpeqmsmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月8日 下午2:59:00；
 * @throws
 */
List<Qpeqmsmb> queryQpeqmsmb();
/**
 * 方法名称: queryQpeqmsmbById ；
 * 方法描述:  TODO:   ；
 * 返回类型: Qpeqmsmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月8日 下午3:02:12；
 * @throws
 */
Qpeqmsmb queryQpeqmsmbById(int contract_id);

/**
 * 方法名称: updateQpeqmsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: boolean ；
 * 作者：Dawn Chen  ；
 * 时间：2017年12月18日 下午1:55:49；
 * @throws
 */
boolean updateQpeqmsmb(Qpeqmsmb qpeqmsmb);

}
