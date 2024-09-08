package com.dao;

import com.entity.JiankangzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiankangzixunVO;
import com.entity.view.JiankangzixunView;


/**
 * 健康资讯
 * 
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface JiankangzixunDao extends BaseMapper<JiankangzixunEntity> {
	
	List<JiankangzixunVO> selectListVO(@Param("ew") Wrapper<JiankangzixunEntity> wrapper);
	
	JiankangzixunVO selectVO(@Param("ew") Wrapper<JiankangzixunEntity> wrapper);
	
	List<JiankangzixunView> selectListView(@Param("ew") Wrapper<JiankangzixunEntity> wrapper);

	List<JiankangzixunView> selectListView(Pagination page,@Param("ew") Wrapper<JiankangzixunEntity> wrapper);
	
	JiankangzixunView selectView(@Param("ew") Wrapper<JiankangzixunEntity> wrapper);
	
}
