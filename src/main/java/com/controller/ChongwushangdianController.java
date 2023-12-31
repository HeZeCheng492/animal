package com.controller;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.ChongwushangdianEntity;
import com.entity.view.ChongwushangdianView;
import com.service.ChongwushangdianService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;


/**
 * 宠物商店
 * 后端接口
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
@RestController
@RequestMapping("/chongwushangdian")
public class ChongwushangdianController {
    @Autowired
    private ChongwushangdianService chongwushangdianService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, ChongwushangdianEntity chongwushangdian, HttpServletRequest request){

        EntityWrapper<ChongwushangdianEntity> ew = new EntityWrapper<ChongwushangdianEntity>();
		PageUtils page = chongwushangdianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chongwushangdian), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, ChongwushangdianEntity chongwushangdian, HttpServletRequest request){
        EntityWrapper<ChongwushangdianEntity> ew = new EntityWrapper<ChongwushangdianEntity>();
		PageUtils page = chongwushangdianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chongwushangdian), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChongwushangdianEntity chongwushangdian){
       	EntityWrapper<ChongwushangdianEntity> ew = new EntityWrapper<ChongwushangdianEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chongwushangdian, "chongwushangdian")); 
        return R.ok().put("data", chongwushangdianService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChongwushangdianEntity chongwushangdian){
        EntityWrapper< ChongwushangdianEntity> ew = new EntityWrapper< ChongwushangdianEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chongwushangdian, "chongwushangdian")); 
		ChongwushangdianView chongwushangdianView =  chongwushangdianService.selectView(ew);
		return R.ok("查询宠物商店成功").put("data", chongwushangdianView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChongwushangdianEntity chongwushangdian = chongwushangdianService.selectById(id);
        return R.ok().put("data", chongwushangdian);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChongwushangdianEntity chongwushangdian = chongwushangdianService.selectById(id);
        return R.ok().put("data", chongwushangdian);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChongwushangdianEntity chongwushangdian, HttpServletRequest request){
    	chongwushangdian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chongwushangdian);

        chongwushangdianService.insert(chongwushangdian);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChongwushangdianEntity chongwushangdian, HttpServletRequest request){
    	chongwushangdian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chongwushangdian);

        chongwushangdianService.insert(chongwushangdian);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ChongwushangdianEntity chongwushangdian, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chongwushangdian);
        chongwushangdianService.updateById(chongwushangdian);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chongwushangdianService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request,
                         @PathVariable("type") String type, @RequestParam Map<String, Object> map) {
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
		
		Wrapper<ChongwushangdianEntity> wrapper = new EntityWrapper<ChongwushangdianEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = chongwushangdianService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
