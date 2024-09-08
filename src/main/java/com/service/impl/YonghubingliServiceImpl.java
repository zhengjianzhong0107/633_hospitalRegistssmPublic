package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YonghubingliDao;
import com.entity.YonghubingliEntity;
import com.service.YonghubingliService;
import com.entity.vo.YonghubingliVO;
import com.entity.view.YonghubingliView;

@Service("yonghubingliService")
public class YonghubingliServiceImpl extends ServiceImpl<YonghubingliDao, YonghubingliEntity> implements YonghubingliService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YonghubingliEntity> page = this.selectPage(
                new Query<YonghubingliEntity>(params).getPage(),
                new EntityWrapper<YonghubingliEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YonghubingliEntity> wrapper) {
		  Page<YonghubingliView> page =new Query<YonghubingliView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YonghubingliVO> selectListVO(Wrapper<YonghubingliEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YonghubingliVO selectVO(Wrapper<YonghubingliEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YonghubingliView> selectListView(Wrapper<YonghubingliEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YonghubingliView selectView(Wrapper<YonghubingliEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
