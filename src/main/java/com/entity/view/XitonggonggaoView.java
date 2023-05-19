package com.entity.view;

import com.entity.XitonggonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 系统公告
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-01 13:34:32
 */
@TableName("xitonggonggao")
public class XitonggonggaoView  extends XitonggonggaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XitonggonggaoView(){
	}
 
 	public XitonggonggaoView(XitonggonggaoEntity xitonggonggaoEntity){
 	try {
			BeanUtils.copyProperties(this, xitonggonggaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
/*这段代码定义了一个名为XitonggonggaoView的Java类，它继承自XitonggonggaoEntity类并实现了Serializable接口。
该类封装了一个公告系统的实体信息，并提供了一个构造函数用于将XitonggonggaoEntity类型的对象转换为XitonggonggaoView类型的对象。

构造函数中使用了BeanUtils.copyProperties方法来将从参数传入的XitonggonggaoEntity实例的属性值复制到当前XitonggonggaoView实例中。
该方法是Apache Commons BeanUtils包中提供的一个工具方法，用于将源对象的属性值拷贝到目标对象中，避免手动编写大量的setter和getter方法。

此外，该类还使用了静态变量serialVersionUID来确保对象序列化时的版本一致性。*/
