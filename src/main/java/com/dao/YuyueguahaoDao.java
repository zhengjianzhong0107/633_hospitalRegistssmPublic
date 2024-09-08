package com.dao;

import com.entity.YuyueguahaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuyueguahaoVO;
import com.entity.view.YuyueguahaoView;


/**
 * 预约挂号
 * 
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface YuyueguahaoDao extends BaseMapper<YuyueguahaoEntity> {
	
	List<YuyueguahaoVO> selectListVO(@Param("ew") Wrapper<YuyueguahaoEntity> wrapper);
	
	YuyueguahaoVO selectVO(@Param("ew") Wrapper<YuyueguahaoEntity> wrapper);
	
	List<YuyueguahaoView> selectListView(@Param("ew") Wrapper<YuyueguahaoEntity> wrapper);

	List<YuyueguahaoView> selectListView(Pagination page,@Param("ew") Wrapper<YuyueguahaoEntity> wrapper);
	
	YuyueguahaoView selectView(@Param("ew") Wrapper<YuyueguahaoEntity> wrapper);
	
}
