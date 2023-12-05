package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.ChongwulingyangEntity;
import com.entity.view.ChongwulingyangView;
import com.entity.vo.ChongwulingyangVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 宠物领养
 * 
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwulingyangDao extends BaseMapper<ChongwulingyangEntity> {
	
	List<ChongwulingyangVO> selectListVO(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
	
	ChongwulingyangVO selectVO(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
	
	List<ChongwulingyangView> selectListView(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);

	List<ChongwulingyangView> selectListView(Pagination page, @Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
	
	ChongwulingyangView selectView(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
	
}
