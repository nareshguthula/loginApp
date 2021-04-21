<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%
} else {
%>
<center>
    <table width="30%" cellpadding="5">
        <tbody>
        <tr>
            <td>Welcome <%=session.getAttribute("userName")%></td>
            <td><a href='logout.jsp'>Log out</a></td>
        </tr>
        <tr>
            <td style="font-weight: bold">First Name</td>
            <td><%=session.getAttribute("firstName")%></td>
        </tr>
        <tr>
            <td style="font-weight: bold">Last Name</td>
            <td><%=session.getAttribute("lastName")%></td>
        </tr>
        <tr>
            <td style="font-weight: bold">Email</td>
            <td><%=session.getAttribute("email")%></td>
        </tr>
        </tbody>
    </table>
</center>


<%
    }
%>
