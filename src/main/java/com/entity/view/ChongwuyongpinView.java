package com.entity.view;

import com.baomidou.mybatisplus.annotations.TableName;
import com.entity.ChongwuyongpinEntity;
import org.apache.commons.beanutils.BeanUtils;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;


/**
 * 宠物用品
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-16 09:02:05
 */
@TableName("chongwuyongpin")
public class ChongwuyongpinView  extends ChongwuyongpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChongwuyongpinView(){
	}
 
 	public ChongwuyongpinView(ChongwuyongpinEntity chongwuyongpinEntity){
 	try {
			BeanUtils.copyProperties(this, chongwuyongpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}