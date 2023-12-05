package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.ChongwujicunEntity;
import com.entity.view.ChongwujicunView;
import com.entity.vo.ChongwujicunVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物寄存
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwujicunService extends IService<ChongwujicunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwujicunVO> selectListVO(Wrapper<ChongwujicunEntity> wrapper);
   	
   	ChongwujicunVO selectVO(@Param("ew") Wrapper<ChongwujicunEntity> wrapper);
   	
   	List<ChongwujicunView> selectListView(Wrapper<ChongwujicunEntity> wrapper);
   	
   	ChongwujicunView selectView(@Param("ew") Wrapper<ChongwujicunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwujicunEntity> wrapper);
   	
}

