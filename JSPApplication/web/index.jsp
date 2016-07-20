
<%@page import="com.leapforg.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapforg.jspapp.dao.CourseDAO"%>
<%@page import="com.leapforg.jspapp.entity.Course"%>
<!DOCTYPE html>
<%@include file="Shared/header.jsp" %>

       <h1>Cources</h1>
         <div class="pull-right">
            <p>
                <a href="add.jsp" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus"> add </span></a>
            </p>
        </div>
            
            
        <table class="table table-bordered  table-hover table-striped">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>fees</th>
                <th>status</th>
                <th>Action</th>

            </tr>
                <%
                     CourseDAO courseDAO= new CourseDAOImpl();
                     for(Course c:courseDAO.getAll() ){
                %>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getName()%></td>
                <td><%=c.getFees()%></td>
                <td><%=c.isStatus ()%></td>
                <td>
                    <a href="edit.jsp?id= <%=c.getId()%>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil"> Edit </span></a>
                </td>
            </tr>
                <%}%>
           
        </table>
<%@include file="Shared/footer.jsp" %>
