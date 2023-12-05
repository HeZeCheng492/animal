package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.DiscusschongwuguashiDao;
import com.entity.DiscusschongwuguashiEntity;
import com.entity.view.DiscusschongwuguashiView;
import com.entity.vo.DiscusschongwuguashiVO;
import com.service.DiscusschongwuguashiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("discusschongwuguashiService")
public class DiscusschongwuguashiServiceImpl extends ServiceImpl<DiscusschongwuguashiDao, DiscusschongwuguashiEntity> implements DiscusschongwuguashiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschongwuguashiEntity> page = this.selectPage(
                new Query<DiscusschongwuguashiEntity>(params).getPage(),
                new EntityWrapper<DiscusschongwuguashiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschongwuguashiEntity> wrapper) {
		  Page<DiscusschongwuguashiView> page =new Query<DiscusschongwuguashiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschongwuguashiVO> selectListVO(Wrapper<DiscusschongwuguashiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschongwuguashiVO selectVO(Wrapper<DiscusschongwuguashiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschongwuguashiView> selectListView(Wrapper<DiscusschongwuguashiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschongwuguashiView selectView(Wrapper<DiscusschongwuguashiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
