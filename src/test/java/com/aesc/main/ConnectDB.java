package com.aesc.main;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

//import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.aesc.pojo.Cw;
import com.aesc.service.CwService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })


/**
 * 出现   ADOQuery1   :   parameter   "***r"   not   found   的提示的原因：   
  1、SQL语句本身无参数；   
  2、ADOQuery1的ParamCheck属性为False；   
  3、未设置ADOQuery1的Connection或ConnectionString属性。 
 * 
 * @author IT-dawn
 *
 */
public class ConnectDB {
	
	//private static Logger logger = Logger.getLogger(ConnectDB.class);
	
	@Resource
	private CwService contractService = null;
	
	/*@Test
	public void test1(){

		Cw esc = new Cw();
		esc.setContract_id     (1); 
		esc.setContract_serial ("ADAS2221"); 
		esc.setMerchant_name   ("汽博"); 
		esc.setAddress         ("重庆"); 
		esc.setArea            ("奇葩"); 
		esc.setCarport_number  ("22"); 
		esc.setCarport_serial  ("2221"); 
		esc.setPrice           ("22"); 
		esc.setOffice          ("22"); 
		esc.setTotal           ("33"); 
		esc.setTimes           ("3457566"); 
		esc.setYear_start      ("3457566"); 
		esc.setMonth_start     ("3457566"); 
		esc.setDay_start       ("3457566"); 
		esc.setYear_end        ("3457566"); 
		esc.setMonth_end       ("3457566"); 
		esc.setDay_end         ("3457566"); 
		esc.setPay_one         ("3457566"); 
		esc.setPay_two         ("3457566"); 
		esc.setCash_deposit    ("3457566"); 
		esc.setRent_one        ("3457566"); 
		esc.setRent_two        ("3457566"); 
		esc.setRent_three      ("3457566"); 
		esc.setArea_four       ("3457566"); 
		esc.setPurpose         ("3457566"); 
		esc.setAccessory       ("3457566"); 
		esc.setRemark          ("3457566"); 
		esc.setFirst_agent     ("3457566"); 
		esc.setFirst_date      ("2017-07-19"); 
		esc.setSecond_sign     ("323232"); 
		esc.setSecond_agent    ("323232");
	    esc.setPhone           ("323232");
	    esc.setSecond_date     ("2017-07-19");
	    contractService.save(esc);
	}*/
	@Test
	public void testquery(){
	List<Cw> esc = new ArrayList<Cw>();
		esc = contractService.queryAll();
		for (Cw xescscdxtcw : esc) {
			System.out.println("合同编号为："+xescscdxtcw.getContract_serial());
			System.out.println(xescscdxtcw.getMerchant_name());
			System.out.println(xescscdxtcw.getSecond_agent());
			System.out.println(xescscdxtcw.getPhone());
			System.out.println(xescscdxtcw.getSecond_date());
			System.out.println("=============================");
		}
	}
}
