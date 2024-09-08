package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjiankangzixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjiankangzixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjiankangzixunView;


/**
 * 健康资讯评论表
 *
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public interface DiscussjiankangzixunService extends IService<DiscussjiankangzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjiankangzixunVO> selectListVO(Wrapper<DiscussjiankangzixunEntity> wrapper);
   	
   	DiscussjiankangzixunVO selectVO(@Param("ew") Wrapper<DiscussjiankangzixunEntity> wrapper);
   	
   	List<DiscussjiankangzixunView> selectListView(Wrapper<DiscussjiankangzixunEntity> wrapper);
   	
   	DiscussjiankangzixunView selectView(@Param("ew") Wrapper<DiscussjiankangzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjiankangzixunEntity> wrapper);
   	
}

