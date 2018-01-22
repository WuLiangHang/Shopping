<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.BigTypeForm"%>

<jsp:useBean id="big" scope="page" class="com.wy.dao.BigTypeDao"/>
<%List bigList=(List)big.selectBig();%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<form name="form" action="goodsAction.do?action=17" method="post">
<table  height="25"  border="0" cellpadding="0" cellspacing="0" align="center">
      <tr >
   	<td height="50px">商品名称：<input type="text" name="goodsName" />&nbsp;&nbsp;<input type="submit" value="搜索"/></td>
   </tr>
   <tr>
   	<td></td>
   </tr>
   <tr style="display:none;">
     <td  align="center">
     <%for(int i=0;i<bigList.size();i++){
       BigTypeForm bigForm=(BigTypeForm)bigList.get(i);
     %>
     <a href="goodsAction.do?action=12&big=<%=bigForm.getId()%>"><%=bigForm.getBigName()%></a>&nbsp;&nbsp;
     <%}%>
	 </td>
   </tr>

</table>
</form>