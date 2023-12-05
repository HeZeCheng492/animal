package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.ChongwulingyangEntity;
import com.entity.view.ChongwulingyangView;
import com.entity.vo.ChongwulingyangVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物领养
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwulingyangService extends IService<ChongwulingyangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwulingyangVO> selectListVO(Wrapper<ChongwulingyangEntity> wrapper);
   	
   	ChongwulingyangVO selectVO(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
   	
   	List<ChongwulingyangView> selectListView(Wrapper<ChongwulingyangEntity> wrapper);
   	
   	ChongwulingyangView selectView(@Param("ew") Wrapper<ChongwulingyangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwulingyangEntity> wrapper);
   	
}

