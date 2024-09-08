package com.dao;

import com.entity.YonghubingliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YonghubingliVO;
import com.entity.view.YonghubingliView;


/**
 * 用户病例
 * 
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface YonghubingliDao extends BaseMapper<YonghubingliEntity> {
	
	List<YonghubingliVO> selectListVO(@Param("ew") Wrapper<YonghubingliEntity> wrapper);
	
	YonghubingliVO selectVO(@Param("ew") Wrapper<YonghubingliEntity> wrapper);
	
	List<YonghubingliView> selectListView(@Param("ew") Wrapper<YonghubingliEntity> wrapper);

	List<YonghubingliView> selectListView(Pagination page,@Param("ew") Wrapper<YonghubingliEntity> wrapper);
	
	YonghubingliView selectView(@Param("ew") Wrapper<YonghubingliEntity> wrapper);
	
}
