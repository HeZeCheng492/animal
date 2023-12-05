package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.ChongwushangdianDao;
import com.entity.ChongwushangdianEntity;
import com.entity.view.ChongwushangdianView;
import com.entity.vo.ChongwushangdianVO;
import com.service.ChongwushangdianService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("chongwushangdianService")
public class ChongwushangdianServiceImpl extends ServiceImpl<ChongwushangdianDao, ChongwushangdianEntity> implements ChongwushangdianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChongwushangdianEntity> page = this.selectPage(
                new Query<ChongwushangdianEntity>(params).getPage(),
                new EntityWrapper<ChongwushangdianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwushangdianEntity> wrapper) {
		  Page<ChongwushangdianView> page =new Query<ChongwushangdianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChongwushangdianVO> selectListVO(Wrapper<ChongwushangdianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChongwushangdianVO selectVO(Wrapper<ChongwushangdianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChongwushangdianView> selectListView(Wrapper<ChongwushangdianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChongwushangdianView selectView(Wrapper<ChongwushangdianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
