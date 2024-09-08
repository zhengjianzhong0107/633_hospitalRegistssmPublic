package com.entity.view;

import com.entity.DiscussyishengzuozhenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医生坐诊评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
@TableName("discussyishengzuozhen")
public class DiscussyishengzuozhenView  extends DiscussyishengzuozhenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyishengzuozhenView(){
	}
 
 	public DiscussyishengzuozhenView(DiscussyishengzuozhenEntity discussyishengzuozhenEntity){
 	try {
			BeanUtils.copyProperties(this, discussyishengzuozhenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
