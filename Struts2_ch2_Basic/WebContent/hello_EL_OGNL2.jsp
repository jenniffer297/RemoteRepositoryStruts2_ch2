<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hello_EL_OGNL.jsp</title>
<s:head theme="xhtml" />
</head>
<body>
	<H2>Struts2��OGNL�PEL���Ƚm��</H2>
	<OL>

		<LI><b><font color="blue" size="4">�ШD�Ѽƴ���: (parameters - �z�L request.getParameter ����)</font></b><br>
			     <b>&lt;%=request.getParameter("ename")%> =</b> <%=request.getParameter("ename")%>                                        <br><br><br></LI>

		<LI><b><font color="blue" size="4">�ШD�Ѽƴ���: (parameters - �z�L EL ����)</font></b><br>
			     <b>\${param.ename} =</b> ${param.ename}    <br><br><br></LI>

        <LI><b><font color="blue" size="4">�ШD�Ѽƴ���: (parameters - �z�L OGNL ����)</font></b><br>
			     <b>&lt;s:property value="#parameters.ename"/> =</b> <s:property value="#parameters.ename"/>    <br><br><br></LI>


		<LI><b><font color="red" size="4">�ݩʴ���: (ValueStack �P attr - �z�L EL ����)</font></b><br>
		         <b>\${ename} =</b> ${ename}                            <br> 
		         <b>\${requestScope.ename} =</b> ${requestScope.ename}  <br><br><br></LI>
		         
		<LI><b><font color="red" size="4">�ݩʴ���: (ValueStack �P attr - �z�L OGNL ����)(#)</font></b><br> 
		         <b>&lt;s:property value="ename"/> =</b> <s:property value="ename"/>                            <br>
			     <b>&lt;s:property value="%{ename}"/> =</b> <s:property value="%{ename}"/>                      <br> 
			     <b>&lt;s:property value="#request.ename"/> =</b> <s:property value="#request.ename"/>          <br>
			     <b>&lt;s:property value="%{#request.ename}"/> = </b> <s:property value="%{#request.ename}"/>   <br><br><br></LI>
			     
		<LI><b> label: ���浲�G1 �� <s:label  label="ename" />    </b><br>
        <LI><b> label: ���浲�G2 �� <s:label  label="%{ename}" /> </b>
	</OL>
</body>
</html>
