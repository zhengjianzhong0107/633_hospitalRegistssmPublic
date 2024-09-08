package com.dao;

import com.entity.DiscussyishengzuozhenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussyishengzuozhenVO;
import com.entity.view.DiscussyishengzuozhenView;


/**
 * 医生坐诊评论表
 * 
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface DiscussyishengzuozhenDao extends BaseMapper<DiscussyishengzuozhenEntity> {
	
	List<DiscussyishengzuozhenVO> selectListVO(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
	
	DiscussyishengzuozhenVO selectVO(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
	
	List<DiscussyishengzuozhenView> selectListView(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);

	List<DiscussyishengzuozhenView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
	
	DiscussyishengzuozhenView selectView(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
	
}
