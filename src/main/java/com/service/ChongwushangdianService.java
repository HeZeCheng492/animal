package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.ChongwushangdianEntity;
import com.entity.view.ChongwushangdianView;
import com.entity.vo.ChongwushangdianVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物商店
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwushangdianService extends IService<ChongwushangdianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwushangdianVO> selectListVO(Wrapper<ChongwushangdianEntity> wrapper);
   	
   	ChongwushangdianVO selectVO(@Param("ew") Wrapper<ChongwushangdianEntity> wrapper);
   	
   	List<ChongwushangdianView> selectListView(Wrapper<ChongwushangdianEntity> wrapper);
   	
   	ChongwushangdianView selectView(@Param("ew") Wrapper<ChongwushangdianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwushangdianEntity> wrapper);
   	
}

