package com.entity.view;

import com.entity.YishengzuozhenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医生坐诊
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
@TableName("yishengzuozhen")
public class YishengzuozhenView  extends YishengzuozhenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YishengzuozhenView(){
	}
 
 	public YishengzuozhenView(YishengzuozhenEntity yishengzuozhenEntity){
 	try {
			BeanUtils.copyProperties(this, yishengzuozhenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
