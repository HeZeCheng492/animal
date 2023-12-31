package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.YonghulingyangEntity;
import com.entity.view.YonghulingyangView;
import com.entity.vo.YonghulingyangVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 用户领养
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface YonghulingyangService extends IService<YonghulingyangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghulingyangVO> selectListVO(Wrapper<YonghulingyangEntity> wrapper);
   	
   	YonghulingyangVO selectVO(@Param("ew") Wrapper<YonghulingyangEntity> wrapper);
   	
   	List<YonghulingyangView> selectListView(Wrapper<YonghulingyangEntity> wrapper);
   	
   	YonghulingyangView selectView(@Param("ew") Wrapper<YonghulingyangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<YonghulingyangEntity> wrapper);
   	
}

