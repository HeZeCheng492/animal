package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.DiscusschongwuguashiEntity;
import com.entity.view.DiscusschongwuguashiView;
import com.entity.vo.DiscusschongwuguashiVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物挂失评论表
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:06
 */
public interface DiscusschongwuguashiService extends IService<DiscusschongwuguashiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschongwuguashiVO> selectListVO(Wrapper<DiscusschongwuguashiEntity> wrapper);
   	
   	DiscusschongwuguashiVO selectVO(@Param("ew") Wrapper<DiscusschongwuguashiEntity> wrapper);
   	
   	List<DiscusschongwuguashiView> selectListView(Wrapper<DiscusschongwuguashiEntity> wrapper);
   	
   	DiscusschongwuguashiView selectView(@Param("ew") Wrapper<DiscusschongwuguashiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschongwuguashiEntity> wrapper);
   	
}

