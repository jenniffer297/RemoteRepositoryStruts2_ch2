<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>form.jsp</title>
<s:head theme="xhtml" /> <!--�w�]�� xhtml --> <!--theme �i�� xhtml �� simple �� css_xhtml --> 
</head>
<body><br>
<OL>

        <LI><font color="blue"><b>�ǲΪ�Html����</b></font>
        
        <form action="<%=request.getContextPath()%>/myNamespace/myAction.action"	method="post">
			     ���u�m�W: 
			    <input type="text" name="ename" value="peter1�d�ç�" /><p>
				<input type="submit" />
		</form><BR>	</LI>
		
		
		<LI><font color="blue"><b>Struts2�����UI����</b></font>
		
		<s:form action="myAction" namespace="/myNamespace" >
			<s:textfield name="ename" label="���u�m�W"  value="peter1�d�ç�" />
			<s:submit value="�e�X" />
		</s:form></LI>
        
</OL>
</body>
</html>