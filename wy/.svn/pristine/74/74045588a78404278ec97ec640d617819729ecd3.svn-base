<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<ul class='wraplist'>
	
	<c:forEach items="${Menu}" var="m">
		<li class='menusection'>
			<c:if test="${m.id == 1}">
			<a href="realcom.jsp" class="fangke" style="">
                 <%-- <img src="<%=basePath %>${m.img}" class="tz"/> --%>
                      &nbsp;&nbsp;&nbsp;&nbsp;${m.name}
            </a>
			</c:if>
		
			<c:if test="${m.id != 1}">
			 <img src="<%=basePath %>${m.img}" class="tz"/>
                      &nbsp;&nbsp;&nbsp;&nbsp;${m.name}
            </c:if>
				<c:forEach items="${m.childMenu }" var="c">
	 				<li class="margin-top-8">
                   			 <a href="<%=basePath %>${c.url }">
                   			<span class="title" style="margin-left: 45px">${c.name }</span>
                   			 <i class="fa fa-th-large"></i>
                   			  </a>
				</c:forEach>
		</li>
	</c:forEach>
</ul>
	</body>

</html>
