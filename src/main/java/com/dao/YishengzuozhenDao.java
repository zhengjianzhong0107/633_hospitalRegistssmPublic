package com.dao;

import com.entity.YishengzuozhenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YishengzuozhenVO;
import com.entity.view.YishengzuozhenView;


/**
 * 医生坐诊
 * 
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface YishengzuozhenDao extends BaseMapper<YishengzuozhenEntity> {
	
	List<YishengzuozhenVO> selectListVO(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
	
	YishengzuozhenVO selectVO(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
	
	List<YishengzuozhenView> selectListView(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);

	List<YishengzuozhenView> selectListView(Pagination page,@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
	
	YishengzuozhenView selectView(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
	
}
