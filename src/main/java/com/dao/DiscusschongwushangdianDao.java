package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.DiscusschongwushangdianEntity;
import com.entity.view.DiscusschongwushangdianView;
import com.entity.vo.DiscusschongwushangdianVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 宠物商店评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-16 09:02:06
 */
public interface DiscusschongwushangdianDao extends BaseMapper<DiscusschongwushangdianEntity> {
	
	List<DiscusschongwushangdianVO> selectListVO(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
	
	DiscusschongwushangdianVO selectVO(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
	
	List<DiscusschongwushangdianView> selectListView(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);

	List<DiscusschongwushangdianView> selectListView(Pagination page, @Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
	
	DiscusschongwushangdianView selectView(@Param("ew") Wrapper<DiscusschongwushangdianEntity> wrapper);
	
}
