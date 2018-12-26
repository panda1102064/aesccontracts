package com.aesc.dao;

import java.util.ArrayList;

import com.aesc.pojo.Cw;

public interface CwDao {

    /**
     * 
     * 方法名称: queryAll ； 方法描述: : ； 返回类型: ArrayList<Cw> ； 创建人：Dawn Chen ；
     * 创建时间：2017年7月19日 下午3:29:02； @throws
     */
    ArrayList<Cw> queryAll();

    /**
     * 
     * 方法名称: save ； 方法描述: : ； 返回类型: void ； 创建人：Dawn Chen ； 创建时间：2017年7月19日
     * 下午3:29:07； @throws
     */
    void save(Cw cw);

    /**
     * 
     * 方法名称: queryById ； 方法描述: : ； 返回类型: Cw ； 创建人：Dawn Chen ；
     * 创建时间：2017年7月19日 下午3:29:11； @throws
     */
    Cw queryById(int contract_id);

    /**
     * 方法名称: updateCw ；
     * 方法描述:  :   ；
     * 返回类型: boolean ；
     * 作者：Dawn Chen  ；
     * 时间：2017年11月2日 下午9:06:52；
     * @throws
     */
    boolean updateCw(Cw cw);

}
