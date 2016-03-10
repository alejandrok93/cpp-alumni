<%-- 
    Document   : search
    Created on : Mar 9, 2016, 7:05:13 PM
    Author     : alejandrok
--%>

<%@include file="header_user.jsp" %>
<div class="container">   
<img class="img img-responsive text-center"
         src="<%= request.getContextPath()%>/img/cpp_center.jpg"
         alt="Cal Poly Pomona Logo"/>
    <br>
    
       <sql:query var="listUsers"   dataSource="${myDS}">
         SELECT * FROM users WHERE first_name LIKE'<%=  session.getAttribute("name") %>' OR last_name LIKE'<%=  session.getAttribute("name") %>';
    </sql:query>

        <table    style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                   
                        <td>
                            First Name
                        </td>
                         <td>
                            Last Name
                        </td>
                    </tr>
                        <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                 
                    <td><p><c:out value="${user.first_name}" /> </p></td>
                    <td><p><c:out value="${user.last_name}" /> </p></td>
                </tr>
                        </c:forEach> 
        </table>
     
        </div>  
         
    
         
        
      <%@include file="footer.jsp" %>   
