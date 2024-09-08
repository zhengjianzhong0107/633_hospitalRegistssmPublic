package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YishengzuozhenEntity;
import com.entity.view.YishengzuozhenView;

import com.service.YishengzuozhenService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 医生坐诊
 * 后端接口
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
@RestController
@RequestMapping("/yishengzuozhen")
public class YishengzuozhenController {
    @Autowired
    private YishengzuozhenService yishengzuozhenService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YishengzuozhenEntity yishengzuozhen, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yisheng")) {
			yishengzuozhen.setYishenggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YishengzuozhenEntity> ew = new EntityWrapper<YishengzuozhenEntity>();
    	PageUtils page = yishengzuozhenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yishengzuozhen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YishengzuozhenEntity yishengzuozhen, HttpServletRequest request){
        EntityWrapper<YishengzuozhenEntity> ew = new EntityWrapper<YishengzuozhenEntity>();
    	PageUtils page = yishengzuozhenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yishengzuozhen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YishengzuozhenEntity yishengzuozhen){
       	EntityWrapper<YishengzuozhenEntity> ew = new EntityWrapper<YishengzuozhenEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yishengzuozhen, "yishengzuozhen")); 
        return R.ok().put("data", yishengzuozhenService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YishengzuozhenEntity yishengzuozhen){
        EntityWrapper< YishengzuozhenEntity> ew = new EntityWrapper< YishengzuozhenEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yishengzuozhen, "yishengzuozhen")); 
		YishengzuozhenView yishengzuozhenView =  yishengzuozhenService.selectView(ew);
		return R.ok("查询医生坐诊成功").put("data", yishengzuozhenView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        YishengzuozhenEntity yishengzuozhen = yishengzuozhenService.selectById(id);
        return R.ok().put("data", yishengzuozhen);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        YishengzuozhenEntity yishengzuozhen = yishengzuozhenService.selectById(id);
        return R.ok().put("data", yishengzuozhen);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YishengzuozhenEntity yishengzuozhen, HttpServletRequest request){
    	yishengzuozhen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yishengzuozhen);

        yishengzuozhenService.insert(yishengzuozhen);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YishengzuozhenEntity yishengzuozhen, HttpServletRequest request){
    	yishengzuozhen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yishengzuozhen);

        yishengzuozhenService.insert(yishengzuozhen);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YishengzuozhenEntity yishengzuozhen, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yishengzuozhen);
        yishengzuozhenService.updateById(yishengzuozhen);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yishengzuozhenService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YishengzuozhenEntity> wrapper = new EntityWrapper<YishengzuozhenEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yisheng")) {
			wrapper.eq("yishenggonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = yishengzuozhenService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
