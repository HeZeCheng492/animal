package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.ChongwuyongpinEntity;
import com.entity.view.ChongwuyongpinView;
import com.entity.vo.ChongwuyongpinVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 宠物用品
 *
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
public interface ChongwuyongpinService extends IService<ChongwuyongpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwuyongpinVO> selectListVO(Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	ChongwuyongpinVO selectVO(@Param("ew") Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	List<ChongwuyongpinView> selectListView(Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	ChongwuyongpinView selectView(@Param("ew") Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwuyongpinEntity> wrapper);
   	
}

