package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.DiscusschongwushangdianEntity;
import com.entity.view.DiscusschongwushangdianView;
import com.entity.vo.DiscusschongwushangdianVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物商店评论表
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:06
 */
public interface DiscusschongwushangdianService extends IService<DiscusschongwushangdianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschongwushangdianVO> selectListVO(Wrapper<DiscusschongwushangdianEntity> wrapper);
   	
   	DiscusschongwushangdianVO selectVO(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
   	
   	List<DiscusschongwushangdianView> selectListView(Wrapper<DiscusschongwushangdianEntity> wrapper);
   	
   	DiscusschongwushangdianView selectView(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschongwushangdianEntity> wrapper);
   	
}

