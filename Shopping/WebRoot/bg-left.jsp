<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.wy.domain.MemberForm"%>
  <script Language="JavaScript">
 function quit() {
  if(confirm("确定要退出后台吗？")){
    window.location.href="loginOut.jsp";
	}
  }
 </script>
 
 
 
 
 <%com.wy.domain.ManagerForm manager=(com.wy.domain.ManagerForm)session.getAttribute("manager"); 
 if(manager!=null){
 %>
<table width="35" height="22" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/bg_left01.jpg" width="170" height="45"></td>
      </tr>
    </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="118" height="17" align="center" valign="bottom"><div align="left"><a href="goodsAction.do?action=0" class="a3">商品设置</a></div></td>
            </tr>
            </table>
            <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="17" align="center"><div align="center"><font color="#FFFFFF">Goods Manage</font></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="109" height="17" align="center" valign="bottom"><div align="left"><a href="memberAction.do?action=2" class="a3">会员设置</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" align="center"><div align="center"><font color="#FFFFFF">Member Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      <%if(manager.getSigh()==1){%>        
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="managerAction.do?action=1" class="a3">后台管理员设置</a></div></td>
                </tr>
                </table>
                <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="17" align="center"><div align="center"><font color="#FFFFFF">Admin Manage</font></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>
      <%}else{%>
       <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="bg-managerUpdatePassword.jsp" class="a3">修改密码</a></div></td>
                </tr>
                </table>
                <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="17" align="center"><div align="center"><font color="#FFFFFF">Amend Password</font></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>    
      <%}%>
      
      
      
      
      
      
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="orderAction.do?action=0" class="a3">订单设置</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" align="center"><div align="center"><font color="#FFFFFF">Order Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="afficheAction.do?action=0" class="a3">公告设置</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" align="center"><div align="center"><font color="#FFFFFF">Placard Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="linkAction.do?action=0" class="a3">友情设置</a></div></td>
              </tr>
              </table>
              <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" align="center"><div align="center"><font color="#FFFFFF">Link Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="47" border="0" cellpadding="0" cellspacing="0" background="image/bg_left03.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="javascript:quit()" class="a3">安全退出</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" align="center"><div align="center"><font color="#FFFFFF">Quit Account</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="image/bg_left04.jpg" width="170" height="68"></td>
        </tr>
      </table>  
<%} %>  





 <%MemberForm form=(MemberForm)session.getAttribute("form"); 
 if(form!=null){
 %>
<table width="35" height="22" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/bg_left01.jpg" width="170" height="45"></td>
      </tr>
    </table>
    
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="goodsAction.do?action=18&member=<%=((MemberForm)session.getAttribute("form")).getName() %>" class="a3">商品设置</a></div></td>
            </tr>
            </table>
            <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="17" width="150" align="right"><div align="center"><font color="#FFFFFF">Goods Manage</font></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="orderAction.do?action=6&name=<%=((MemberForm)session.getAttribute("form")).getName() %>" class="a3">我买到的</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" width="150" align="center"><div align="center"><font color="#FFFFFF">Order Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      

      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="orderAction.do?action=4&member=<%=((MemberForm)session.getAttribute("form")).getName() %>" class="a3">我卖出的</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" width="150" align="center"><div align="center"><font color="#FFFFFF">Order Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
     
      <table width="170" height="47" border="0" cellpadding="0" cellspacing="0" background="image/bg_left03.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="index.jsp" class="a3">返回主页</a></div></td>
              </tr>
              </table>
              <table width="150" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17" width="150" align="center"><div align="center"><font color="#FFFFFF">Back Homepage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="image/bg_left04.jpg" width="170" height="68"></td>
        </tr>
      </table>

</body>
</html>

<%} %>  






    