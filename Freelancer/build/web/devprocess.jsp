<%-- 
    Document   : devprocess.jsp
    Created on : Mar 27, 2018, 11:23:36 PM
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
       <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/project" user="root" password=""/>
        <sql:query dataSource="${db}" var="rs2">
            SELECT * FROM developer_reg WHERE NAME='<%=request.getParameter("name")%>';
        </sql:query>
        <c:forEach items="${rs2.rows}" var="data">
            <c:set var="mydata" value="${data.NAME}"/>
        </c:forEach>
        <c:if test="${mydata==null}">
        <sql:update var="rs" dataSource="${db}">
        INSERT INTO developer_reg(NAME,SKILLS,EXPERIENCE,MOB_NO,EMAIL,BASE_PRICE,PROJECTS,TOTAL_INCOME,PASSWORD) VALUES(?,?,?,?,?,?,?,?,?);
        <sql:param value="<%=request.getParameter("name")%>"></sql:param>
        <sql:param value="<%=request.getParameter("skills")%>"></sql:param>
        <sql:param value="<%=request.getParameter("exp")%>"></sql:param>
        <sql:param value="<%=request.getParameter("mno")%>"></sql:param>
        <sql:param value="<%=request.getParameter("email")%>"></sql:param>
        <sql:param value="<%=request.getParameter("base_price")%>"></sql:param>
        <sql:param value="<%=request.getParameter("project")%>"></sql:param>
        <sql:param value="<%=request.getParameter("income")%>"></sql:param>
        <sql:param value="<%=request.getParameter("password")%>"></sql:param>
        </sql:update>
        <%@include file="index.html"%>
        </c:if>
        <c:if test="${mydata!=null}">
            <script>window.location.href='Developer_Registration.jsp'; 
                alert("<c:out value="This USername is Already Exist"/>");</script>
            <jsp:include page="Developer_Registration.jsp"/>
        </c:if>
    </body>
</html>
