package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussyishengzuozhenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussyishengzuozhenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussyishengzuozhenView;


/**
 * 医生坐诊评论表
 *
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface DiscussyishengzuozhenService extends IService<DiscussyishengzuozhenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussyishengzuozhenVO> selectListVO(Wrapper<DiscussyishengzuozhenEntity> wrapper);
   	
   	DiscussyishengzuozhenVO selectVO(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
   	
   	List<DiscussyishengzuozhenView> selectListView(Wrapper<DiscussyishengzuozhenEntity> wrapper);
   	
   	DiscussyishengzuozhenView selectView(@Param("ew") Wrapper<DiscussyishengzuozhenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussyishengzuozhenEntity> wrapper);
   	
}

