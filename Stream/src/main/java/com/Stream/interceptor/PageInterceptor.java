package com.Stream.interceptor;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Properties;

import org.apache.ibatis.executor.resultset.ResultSetHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
//StatementHandler中有一prepare(Connection,transactiontimeout)  executor  R
import org.apache.ibatis.session.ResultHandler;

import com.Stream.entity.BaseEntity;


/**
 * 指要拦截的内容
 * @author oracle
 *
 */
@Intercepts({@Signature(type = StatementHandler.class, method = "prepare", args = { Connection.class}) })
public class PageInterceptor implements Interceptor {
	/**
	 * 写拦截代码
	 */
	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		//获取目标对象
		StatementHandler statementHandler = (StatementHandler) invocation.getTarget();		
		/**
		 * 元数据，描信息
		 */
		MetaObject metaStatementHandler = SystemMetaObject.forObject(statementHandler);
		//delegate.boundSql是死的，不能改变 获取sql语句对象
		BoundSql boundSql = (BoundSql) metaStatementHandler.getValue("delegate.boundSql");
		// 分页参数作为参数对象parameterObject的一个属性
		String sql = boundSql.getSql();
		if(boundSql.getParameterObject() instanceof BaseEntity)
		{			
			System.out.println(sql);
			
			BaseEntity co = (BaseEntity) (boundSql.getParameterObject());
			
			if(co!=null)
			if(co.isPageYes())
			{			
				int max=(co.getPage()-1)*co.getPageRow();
				//mysql 分页语句
				String mysql=sql+" limit "+max+","+co.getPageRow();	
				System.out.println(mysql);
				//oracle 分页语句
				//String endSql="select * from ("+returnSql(sql)+" where rownum<"+(max+3)+") tb where tb.rr>="+max;
				//System.out.println(endSql);
				metaStatementHandler.setValue("delegate.boundSql.sql", mysql); 
			}
		}
		return invocation.proceed();
	}

	// 拦截类型StatementHandler
	@Override
	public Object plugin(Object target) {
		if (target instanceof StatementHandler) {
			//创建 代理对象
			return Plugin.wrap(target, this);
		} else {
			return target;
		}
	}

	@Override
	public void setProperties(Properties properties) {
	}

	/**
	 * 硬编码
	 * @param sql
	 * @return
	
	public String returnSql(String sql)
	{
		StringBuffer strB=new StringBuffer(sql);
		strB.insert(6, " rownum rr,");
		return strB.toString();
	} */
	

	
}