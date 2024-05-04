package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学生评价
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-27 20:19:43
 */
@TableName("xueshengpingjia")
public class XueshengpingjiaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XueshengpingjiaEntity() {
		
	}
	
	public XueshengpingjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 教师姓名
	 */
					
	private String jiaoshixingming;
	
	/**
	 * 照片
	 */
					
	private String zhaopian;
	
	/**
	 * 教学质量评分
	 */
					
	private String jiaoxuezhiliangpingfen;
	
	/**
	 * 教学态度评分
	 */
					
	private String jiaoxuetaidupingfen;
	
	/**
	 * 综合教学评分
	 */
					
	private String zonghejiaoxuepingfen;
	
	/**
	 * 平均分
	 */
					
	private Float pingjunfen;
	
	/**
	 * 评价留言
	 */
					
	private String pingjialiuyan;
	
	/**
	 * 学号
	 */
					
	private String xuehao;
	
	/**
	 * 学生姓名
	 */
					
	private String xueshengxingming;
	
	/**
	 * 用户id
	 */
					
	private Long userid;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：教师姓名
	 */
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}
	/**
	 * 设置：照片
	 */
	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}
	/**
	 * 获取：照片
	 */
	public String getZhaopian() {
		return zhaopian;
	}
	/**
	 * 设置：教学质量评分
	 */
	public void setJiaoxuezhiliangpingfen(String jiaoxuezhiliangpingfen) {
		this.jiaoxuezhiliangpingfen = jiaoxuezhiliangpingfen;
	}
	/**
	 * 获取：教学质量评分
	 */
	public String getJiaoxuezhiliangpingfen() {
		return jiaoxuezhiliangpingfen;
	}
	/**
	 * 设置：教学态度评分
	 */
	public void setJiaoxuetaidupingfen(String jiaoxuetaidupingfen) {
		this.jiaoxuetaidupingfen = jiaoxuetaidupingfen;
	}
	/**
	 * 获取：教学态度评分
	 */
	public String getJiaoxuetaidupingfen() {
		return jiaoxuetaidupingfen;
	}
	/**
	 * 设置：综合教学评分
	 */
	public void setZonghejiaoxuepingfen(String zonghejiaoxuepingfen) {
		this.zonghejiaoxuepingfen = zonghejiaoxuepingfen;
	}
	/**
	 * 获取：综合教学评分
	 */
	public String getZonghejiaoxuepingfen() {
		return zonghejiaoxuepingfen;
	}
	/**
	 * 设置：平均分
	 */
	public void setPingjunfen(Float pingjunfen) {
		this.pingjunfen = pingjunfen;
	}
	/**
	 * 获取：平均分
	 */
	public Float getPingjunfen() {
		return pingjunfen;
	}
	/**
	 * 设置：评价留言
	 */
	public void setPingjialiuyan(String pingjialiuyan) {
		this.pingjialiuyan = pingjialiuyan;
	}
	/**
	 * 获取：评价留言
	 */
	public String getPingjialiuyan() {
		return pingjialiuyan;
	}
	/**
	 * 设置：学号
	 */
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
	/**
	 * 设置：学生姓名
	 */
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
	/**
	 * 设置：用户id
	 */
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}

}
