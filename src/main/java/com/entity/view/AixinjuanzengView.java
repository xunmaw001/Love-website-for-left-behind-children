package com.entity.view;

import com.entity.AixinjuanzengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 爱心捐赠
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-18 12:00:47
 */
@TableName("aixinjuanzeng")
public class AixinjuanzengView  extends AixinjuanzengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public AixinjuanzengView(){
	}
 
 	public AixinjuanzengView(AixinjuanzengEntity aixinjuanzengEntity){
 	try {
			BeanUtils.copyProperties(this, aixinjuanzengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
