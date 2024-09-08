package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YishengzuozhenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YishengzuozhenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YishengzuozhenView;


/**
 * 医生坐诊
 *
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface YishengzuozhenService extends IService<YishengzuozhenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YishengzuozhenVO> selectListVO(Wrapper<YishengzuozhenEntity> wrapper);
   	
   	YishengzuozhenVO selectVO(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
   	
   	List<YishengzuozhenView> selectListView(Wrapper<YishengzuozhenEntity> wrapper);
   	
   	YishengzuozhenView selectView(@Param("ew") Wrapper<YishengzuozhenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YishengzuozhenEntity> wrapper);
   	
}

