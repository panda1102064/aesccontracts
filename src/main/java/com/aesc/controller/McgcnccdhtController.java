package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Mcgcnccdht;
import com.aesc.service.McgcnccdhtService;

@Controller
public class McgcnccdhtController {

    @Resource
    private McgcnccdhtService mcgcnccdhtService;

    @RequestMapping("/mcgcnccdht")
    public String redirectMcgcnccdht() {
        return "contracts/mcgcnccdht/mcgcnccdht";
    }

    /**
     * 方法名称: redirectSaveMcgcnccdht ； 方法描述: TODO: ； 返回类型: String ； 创建人：Dawn Chen
     * ； 创建时间：2017年8月2日 下午2:33:55； @throws
     */
    @RequestMapping("/saveMcgcnccdht")
    public String redirectSaveMcgcnccdht(Mcgcnccdht mcgcnccdht) {
        //try {
          mcgcnccdhtService.saveMcgcnccdht(mcgcnccdht);
       /* } catch (DataIntegrityViolationException e) {
          return "manager/error";
        } */
        return "contracts/mcgcnccdht/mcgcnccdht";
    }

    /**
     * 方法名称: redirectQueryMcgcnccdht ； 方法描述: TODO: ； 返回类型: ModelAndView ；
     * 创建人：Dawn Chen ； 创建时间：2017年8月4日 下午2:18:53； @throws
     */
    @RequestMapping("/queryMcgcnccdht")
    public ModelAndView redirectQueryMcgcnccdht(Model model) {
        List<Mcgcnccdht> mcgcnccdhtList = null;
        mcgcnccdhtList = mcgcnccdhtService.queryMcgcnccdht();
        model.addAttribute("mcgcnccdhtList", mcgcnccdhtList);
        return new ModelAndView("contracts/mcgcnccdht/queryMcgcnccdht");
    }

    /**
     * 方法名称: redirectQueryMcgcnccdhtById ； 方法描述: TODO: ； 返回类型: ModelAndView ；
     * 创建人：Dawn Chen ； 创建时间：2017年8月4日 下午2:26:21； @throws
     */
    @RequestMapping("/querymcgcnccdhtListById")
    public ModelAndView redirectQueryMcgcnccdhtById(int contract_id, Model model) {
        Mcgcnccdht mcgcnccdht = null;
        mcgcnccdht = mcgcnccdhtService.queryMcgcnccdhtById(contract_id);
        model.addAttribute("aesc", mcgcnccdht);
        return new ModelAndView("contracts/mcgcnccdht/detailMcgcnccdht");
    }
    
    /**
     * 方法名称: redirectUpdateMcgcnccdhtById ；
     * 方法描述:  TODO:   ；
     * 返回类型: ModelAndView ；
     * 作者：Dawn Chen  ；
     * 时间：2017年11月2日 上午8:53:56；
     * @throws
     */
    @RequestMapping("/updatemcgcnccdhtListById")
    public ModelAndView redirectUpdateMcgcnccdhtById(int contract_id, Model model) {
      Mcgcnccdht mcgcnccdht = null;
      mcgcnccdht = mcgcnccdhtService.queryMcgcnccdhtById(contract_id);
      model.addAttribute("aesc", mcgcnccdht);
      return new ModelAndView("contracts/mcgcnccdht/updateMcgcnccdht");
    }
    
    /**
     * 方法名称: redirectUpdateMcgcnccdht ；
     * 方法描述:  TODO:   ；
     * 返回类型: ModelAndView ；
     * 作者：Dawn Chen  ；
     * 时间：2017年11月2日 上午8:54:01；
     * @throws
     */
    @RequestMapping("/updateMcgcnccdht")
    public ModelAndView redirectUpdateMcgcnccdht(Mcgcnccdht mcgcnccdht, Model model) {
      String msg = "修改成功!请核查！若有误，可再次修改！";
      boolean flag = mcgcnccdhtService.updateMcgcnccdht(mcgcnccdht);
      if(flag) {
        model.addAttribute("msg",msg);
      }else {
        msg = "修改失败！请详细检查所填内容是否正确。";
        model.addAttribute("msg",msg);
      }
      model.addAttribute("aesc", mcgcnccdht);
      return new ModelAndView("contracts/mcgcnccdht/updateMcgcnccdht");
    }
}
