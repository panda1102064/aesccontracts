package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Mcgcwzcxmb;

public interface McgcwzcxmbDao {
/**
 * 
 * 方法名称: saveMcgcwzcxmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月4日 下午4:56:05；
 * @throws
 */
	void saveMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb);
/**
 * 
 * 方法名称: queryMcgcwzcxmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<Mcgcwzcxmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月7日 上午10:56:17；
 * @throws
 */
List<Mcgcwzcxmb> queryMcgcwzcxmb();
/**
 * 
 * 方法名称: queryMcgcwzcxmbById ；
 * 方法描述:  TODO:   ；
 * 返回类型: Mcgcwzcxmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月7日 上午11:04:39；
 * @throws
 */
Mcgcwzcxmb queryMcgcwzcxmbById(int contract_id);
/**
 * 方法名称: updateMcgcwzcxmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: boolean ；
 * 作者：Dawn Chen  ；
 * 时间：2017年11月1日 下午1:58:35；
 * @throws
 */
boolean updateMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb);

}
