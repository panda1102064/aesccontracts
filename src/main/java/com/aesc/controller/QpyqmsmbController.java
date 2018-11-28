package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Qpyqmsmb;
import com.aesc.service.QpyqmsmbService;

@Controller
public class QpyqmsmbController {
    
    @Resource
    private QpyqmsmbService qpyqmsmbService;
    
  /** 方法名称: redirectCw.
 * 方法描述:  TODO:   ；
 * 返回类型: String ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 上午10:38:02；
 */
  @RequestMapping("/qpyqmsmb")
public String redirectQpyqmsmb() {
    return "contracts/qpyqmsmb/qpyqmsmb";
    
  }
  
  /**
   * 
   * 方法名称: redirectSaveQpyqmsmb ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月11日 上午11:15:24；
   * @throws
   */
  @RequestMapping("/saveQpyqmsmb")
  public String redirectSaveQpyqmsmb(Qpyqmsmb qpyqmsmb) {
      try {
        qpyqmsmbService.saveQpyqmsmb(qpyqmsmb);
      } catch (DataIntegrityViolationException e) {
        return "manager/error";
      } 
      return "contracts/qpyqmsmb/qpyqmsmb";
  }
  /**
   * 
   * 方法名称: redirectQueryQpyqmsmb ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月11日 上午11:16:37；
   * @throws
   */
  @RequestMapping("/queryQpyqmsmb")
  public String redirectQueryQpyqmsmb(Model model) {
      List<Qpyqmsmb> qpyqmsmbList = qpyqmsmbService.queryQpyqmsmb();
      model.addAttribute("qpyqmsmbList", qpyqmsmbList);
      return "contracts/qpyqmsmb/queryQpyqmsmb";
  }
  
  /** 
   * 方法名称: redirectQueryQpyqmsmbById ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月11日 上午11:17:19；
   * @throws
   */
  @RequestMapping("/queryQpyqmsmbById")
  public String redirectQueryQpyqmsmbById(int contract_id, Model model) {
      Qpyqmsmb qpyqmsmb = qpyqmsmbService.queryQpyqmsmbById(contract_id);
      model.addAttribute("aesc", qpyqmsmb);
      return "contracts/qpyqmsmb/detailQpyqmsmb";
  }
  
  /**
   * 方法名称: redirectUpdateQpyqmsmbById ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月8日 下午1:52:29；
   * @throws
   */
  @RequestMapping("/updateQpyqmsmbById")
  public String redirectUpdateQpyqmsmbById(int contract_id, Model model) {
    Qpyqmsmb qpyqmsmb = qpyqmsmbService.queryQpyqmsmbById(contract_id);
    model.addAttribute("aesc", qpyqmsmb);
    return "contracts/qpyqmsmb/updateQpyqmsmb";
  }
  
  /**
   * 方法名称: redirectUpdateQpyqmsmb ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月8日 下午1:53:21；
   * @throws
   */
  @RequestMapping("/updateQpyqmsmb")
  public String redirectUpdateQpyqmsmb(Qpyqmsmb qpyqmsmb, Model model) {
    boolean flag = qpyqmsmbService.updateQpyqmsmb(qpyqmsmb);
    String msg = flag ? "修改成功，请详查，若有误，可再次修改！":"修改失败，请详细检查修改内容";
    model.addAttribute("msg",msg);
    model.addAttribute("aesc", qpyqmsmb);
    return "contracts/qpyqmsmb/updateQpyqmsmb";
  }
}
