package com.entity.view;

import com.entity.DiscussjiankangzixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 健康资讯评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
@TableName("discussjiankangzixun")
public class DiscussjiankangzixunView  extends DiscussjiankangzixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussjiankangzixunView(){
	}
 
 	public DiscussjiankangzixunView(DiscussjiankangzixunEntity discussjiankangzixunEntity){
 	try {
			BeanUtils.copyProperties(this, discussjiankangzixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
