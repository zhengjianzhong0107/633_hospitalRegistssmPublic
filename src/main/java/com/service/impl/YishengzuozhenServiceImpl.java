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


import com.dao.YishengzuozhenDao;
import com.entity.YishengzuozhenEntity;
import com.service.YishengzuozhenService;
import com.entity.vo.YishengzuozhenVO;
import com.entity.view.YishengzuozhenView;

@Service("yishengzuozhenService")
public class YishengzuozhenServiceImpl extends ServiceImpl<YishengzuozhenDao, YishengzuozhenEntity> implements YishengzuozhenService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YishengzuozhenEntity> page = this.selectPage(
                new Query<YishengzuozhenEntity>(params).getPage(),
                new EntityWrapper<YishengzuozhenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YishengzuozhenEntity> wrapper) {
		  Page<YishengzuozhenView> page =new Query<YishengzuozhenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YishengzuozhenVO> selectListVO(Wrapper<YishengzuozhenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YishengzuozhenVO selectVO(Wrapper<YishengzuozhenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YishengzuozhenView> selectListView(Wrapper<YishengzuozhenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YishengzuozhenView selectView(Wrapper<YishengzuozhenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
