package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YonghubingliEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YonghubingliVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YonghubingliView;


/**
 * 用户病例
 *
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface YonghubingliService extends IService<YonghubingliEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghubingliVO> selectListVO(Wrapper<YonghubingliEntity> wrapper);
   	
   	YonghubingliVO selectVO(@Param("ew") Wrapper<YonghubingliEntity> wrapper);
   	
   	List<YonghubingliView> selectListView(Wrapper<YonghubingliEntity> wrapper);
   	
   	YonghubingliView selectView(@Param("ew") Wrapper<YonghubingliEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YonghubingliEntity> wrapper);
   	
}

