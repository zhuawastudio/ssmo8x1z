package com.entity.view;

import com.entity.XueshengliuyanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学生留言
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-27 20:19:43
 */
@TableName("xueshengliuyan")
public class XueshengliuyanView  extends XueshengliuyanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueshengliuyanView(){
	}
 
 	public XueshengliuyanView(XueshengliuyanEntity xueshengliuyanEntity){
 	try {
			BeanUtils.copyProperties(this, xueshengliuyanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
