<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="countTime" class="com.wy.tool.CountTime" scope="request"/>
<%@ page import="com.wy.domain.ManagerForm"%>
<%@ page import="com.wy.domain.MemberForm"%>
<%
	if(session.getAttribute("isadmin")=="false"){
		MemberForm form=(MemberForm)session.getAttribute("form");
	
%>
	<table width="788" height="66" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg_01.jpg">
  <tr>
    <td valign="top"><table width="770" border="0" align="center">
      <tr >
        <td width="413" height="53" valign="bottom"><div align="right"></div></td>
        <td width="347" valign="bottom" align="right"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="788" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="15" height="25">&nbsp;</td>
    <td width="533"><font color="#FFFFFF">��ǰ��¼��<%=form.getName()%></font></td>
    <td width="240"><font color="#FFFFFF">������<%=countTime.currentlyTime()%></font></td>
  </tr>
</table>
<% 	
	}
	else{
		ManagerForm manager=(ManagerForm)session.getAttribute("manager");
%>
<table width="788" height="66" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg_01.jpg">
  <tr>
    <td valign="top"><table width="770" border="0" align="center">
      <tr >
        <td width="413" height="53" valign="bottom"><div align="right"></div></td>
        <td width="347" valign="bottom" align="right"><font color="#FFFFFF"><a href="goodsAction.do?action=0" class="a2">��Ʒ��ѯ</a> | <a href="bigTypeAction.do?action=0" class="a2">������ѯ</a> | <a href="smallTypeAction.do?action=0" class="a2">С����ѯ</a></font></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="788" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="15" height="25">&nbsp;</td>
    <td width="533"><font color="#FFFFFF">��ǰ��¼��<%=manager.getAccount()%></font></td>
    <td width="240"><font color="#FFFFFF">������<%=countTime.currentlyTime()%></font></td>
  </tr>
</table>
<%}%>
