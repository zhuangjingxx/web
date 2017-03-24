<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>
		tr{
			height:50px;
			line-height=50px;
			
		}
	</style>
  </head>
  
  <body>
  	<form action="register.action" method="post">
  	
  	<s:token></s:token>
  	<table border="1px">
  		<tr>
  			<td>用户名</td>
  			<td><input  type="text" name="username" /></td>
  			<td></td>
  		</tr>
  		
  			
  		
  		<tr>
  			<td>密&nbsp;码</td>
  			<td><input  type="text" name="password" /></td>
  			<td></td>
  		</tr>
  		
  		<tr>
  			<td>头&nbsp;像</td>
  			<td><input type="file" name="photo" v/></td>
  			<td></td>
  		</tr>
  		
  		<tr>
  			<td >  
  			验证码：    
 			</td>  
 			<td>  
 			 <input type="text" name="rand" id="rand" size="6"    maxlength="6"> 
			 <img src="verfyCode.action" title="点击图片刷新验证码"  onclick="changeValidateCode(this)" height="22"  width="80" />  
 			</td>   
  		</tr>
  			<td colspan="3" "><input type="submit" name="submit" value="提交" width="200px"/ "></td>
  			
  		<tr>
  		
  		</tr>
  		
  	</table>
   </form>
 
     <script type="text/javascript">   
  function changeValidateCode(obj) {   
  //获取当前的时间作为参数，无具体意义   
   var timenow = new Date().getTime();   
  //每次请求需要一个不同的参数，否则可能会返回同样的验证码   
  //这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。   
   obj.src="verfyCode.action?d="+timenow;   
  }   
  </script>  
 

  </body>
</html>
