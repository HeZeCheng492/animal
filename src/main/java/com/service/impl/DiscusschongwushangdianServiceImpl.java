package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.DiscusschongwushangdianDao;
import com.entity.DiscusschongwushangdianEntity;
import com.entity.view.DiscusschongwushangdianView;
import com.entity.vo.DiscusschongwushangdianVO;
import com.service.DiscusschongwushangdianService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("discusschongwushangdianService")
public class DiscusschongwushangdianServiceImpl extends ServiceImpl<DiscusschongwushangdianDao, DiscusschongwushangdianEntity> implements DiscusschongwushangdianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschongwushangdianEntity> page = this.selectPage(
                new Query<DiscusschongwushangdianEntity>(params).getPage(),
                new EntityWrapper<DiscusschongwushangdianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschongwushangdianEntity> wrapper) {
		  Page<DiscusschongwushangdianView> page =new Query<DiscusschongwushangdianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschongwushangdianVO> selectListVO(Wrapper<DiscusschongwushangdianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschongwushangdianVO selectVO(Wrapper<DiscusschongwushangdianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschongwushangdianView> selectListView(Wrapper<DiscusschongwushangdianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschongwushangdianView selectView(Wrapper<DiscusschongwushangdianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
