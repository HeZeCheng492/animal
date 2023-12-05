package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.ChongwufenleiEntity;
import com.entity.view.ChongwufenleiView;
import com.entity.vo.ChongwufenleiVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 宠物分类
 * 
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwufenleiDao extends BaseMapper<ChongwufenleiEntity> {
	
	List<ChongwufenleiVO> selectListVO(@Param("ew") Wrapper<ChongwufenleiEntity> wrapper);
	
	ChongwufenleiVO selectVO(@Param("ew") Wrapper<ChongwufenleiEntity> wrapper);
	
	List<ChongwufenleiView> selectListView(@Param("ew") Wrapper<ChongwufenleiEntity> wrapper);

	List<ChongwufenleiView> selectListView(Pagination page, @Param("ew") Wrapper<ChongwufenleiEntity> wrapper);
	
	ChongwufenleiView selectView(@Param("ew") Wrapper<ChongwufenleiEntity> wrapper);
	
}
