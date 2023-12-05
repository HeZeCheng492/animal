package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.NewsEntity;
import com.entity.view.NewsView;
import com.entity.vo.NewsVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 宠物资讯
 * 
 * @author 
 * @email 
 * @date 2021-01-16 09:02:06
 */
public interface NewsDao extends BaseMapper<NewsEntity> {
	
	List<NewsVO> selectListVO(@Param("ew") Wrapper<NewsEntity> wrapper);
	
	NewsVO selectVO(@Param("ew") Wrapper<NewsEntity> wrapper);
	
	List<NewsView> selectListView(@Param("ew") Wrapper<NewsEntity> wrapper);

	List<NewsView> selectListView(Pagination page, @Param("ew") Wrapper<NewsEntity> wrapper);
	
	NewsView selectView(@Param("ew") Wrapper<NewsEntity> wrapper);
	
}
