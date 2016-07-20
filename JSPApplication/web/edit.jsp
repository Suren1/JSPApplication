<%@page import="com.leapforg.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapforg.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapforg.jspapp.dao.CourseDAO"%>
<%@page import="com.leapforg.jspapp.entity.Course"%>
<%
    Course course= new Course();
    if(request.getParameter("id")== null || request.getParameter("id").isEmpty()){
        response.sendRedirect("index.jsp?error");
    }
    else{
        CourseDAO courseDAO = new CourseDAOImpl();
        try{
        int id = Integer.parseInt(request.getParameter("id"));
        course= courseDAO.getById(id);
        if(course== null){
        response.sendRedirect("index.jsp?error");
    }
        }catch(Exception e){
            out.println(e.getMessage());
        }
    }

%>
<%@include file="Shared/header.jsp" %>
<h1>Edit Courses</h1>
<form action ="save.jsp" method ="post" >
    <div class="form-group">
        <label>Course Name</label>
        <input type="text" name="course_name" required ="required" placeholder="Enter Course Name" class="form-control" value="<%=course.getName()%>"/>
             
    </div> 
        
    <div class="form-group">
        <label>Course Fees</label>
        <input type="text" name="fees" required ="required" placeholder="Enter Course feees" class="form-control" value="<%=course.getFees()%>"/>
             
    </div>
    <div class="checkbox">
        <label>    
            <input type="checkbox" name="status" <% out.println((course.isStatus())?"checked":"");%>>Statu  s      
        </label>         
    </div>
    <button type="submit" class ="btn btn-success" >Save </button>
    <a href ="index.jsp" class="btn btn-danger">Cancel</a>
</form>
<%@include file="Shared/footer.jsp" %>
