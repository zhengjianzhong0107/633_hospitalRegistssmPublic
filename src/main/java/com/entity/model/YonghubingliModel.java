package com.entity.model;

import com.entity.YonghubingliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 用户病例
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-12-24 11:35:16
 */
public class YonghubingliModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 病例名称
	 */
	
	private String binglimingcheng;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 病情
	 */
	
	private String bingqing;
		
	/**
	 * 检查项目
	 */
	
	private String jianchaxiangmu;
		
	/**
	 * 检查结果
	 */
	
	private String jianchajieguo;
		
	/**
	 * 药单
	 */
	
	private String yaodan;
		
	/**
	 * 医嘱
	 */
	
	private String yizhu;
		
	/**
	 * 注意事项
	 */
	
	private String zhuyishixiang;
		
	/**
	 * 病例附件
	 */
	
	private String binglifujian;
		
	/**
	 * 日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date riqi;
		
	/**
	 * 医生工号
	 */
	
	private String yishenggonghao;
		
	/**
	 * 职称
	 */
	
	private String zhicheng;
				
	
	/**
	 * 设置：病例名称
	 */
	 
	public void setBinglimingcheng(String binglimingcheng) {
		this.binglimingcheng = binglimingcheng;
	}
	
	/**
	 * 获取：病例名称
	 */
	public String getBinglimingcheng() {
		return binglimingcheng;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：病情
	 */
	 
	public void setBingqing(String bingqing) {
		this.bingqing = bingqing;
	}
	
	/**
	 * 获取：病情
	 */
	public String getBingqing() {
		return bingqing;
	}
				
	
	/**
	 * 设置：检查项目
	 */
	 
	public void setJianchaxiangmu(String jianchaxiangmu) {
		this.jianchaxiangmu = jianchaxiangmu;
	}
	
	/**
	 * 获取：检查项目
	 */
	public String getJianchaxiangmu() {
		return jianchaxiangmu;
	}
				
	
	/**
	 * 设置：检查结果
	 */
	 
	public void setJianchajieguo(String jianchajieguo) {
		this.jianchajieguo = jianchajieguo;
	}
	
	/**
	 * 获取：检查结果
	 */
	public String getJianchajieguo() {
		return jianchajieguo;
	}
				
	
	/**
	 * 设置：药单
	 */
	 
	public void setYaodan(String yaodan) {
		this.yaodan = yaodan;
	}
	
	/**
	 * 获取：药单
	 */
	public String getYaodan() {
		return yaodan;
	}
				
	
	/**
	 * 设置：医嘱
	 */
	 
	public void setYizhu(String yizhu) {
		this.yizhu = yizhu;
	}
	
	/**
	 * 获取：医嘱
	 */
	public String getYizhu() {
		return yizhu;
	}
				
	
	/**
	 * 设置：注意事项
	 */
	 
	public void setZhuyishixiang(String zhuyishixiang) {
		this.zhuyishixiang = zhuyishixiang;
	}
	
	/**
	 * 获取：注意事项
	 */
	public String getZhuyishixiang() {
		return zhuyishixiang;
	}
				
	
	/**
	 * 设置：病例附件
	 */
	 
	public void setBinglifujian(String binglifujian) {
		this.binglifujian = binglifujian;
	}
	
	/**
	 * 获取：病例附件
	 */
	public String getBinglifujian() {
		return binglifujian;
	}
				
	
	/**
	 * 设置：日期
	 */
	 
	public void setRiqi(Date riqi) {
		this.riqi = riqi;
	}
	
	/**
	 * 获取：日期
	 */
	public Date getRiqi() {
		return riqi;
	}
				
	
	/**
	 * 设置：医生工号
	 */
	 
	public void setYishenggonghao(String yishenggonghao) {
		this.yishenggonghao = yishenggonghao;
	}
	
	/**
	 * 获取：医生工号
	 */
	public String getYishenggonghao() {
		return yishenggonghao;
	}
				
	
	/**
	 * 设置：职称
	 */
	 
	public void setZhicheng(String zhicheng) {
		this.zhicheng = zhicheng;
	}
	
	/**
	 * 获取：职称
	 */
	public String getZhicheng() {
		return zhicheng;
	}
			
}
