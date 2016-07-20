
<%@page import="com.leapforg.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapforg.jspapp.dao.CourseDAO"%>
<%@page import="com.leapforg.jspapp.entity.Course"%>
<%@include file="Shared/header.jsp" %>
<h1>Add Courses</h1>
<form action ="save.jsp" method ="post" >
    <div class="form-group">
        <label>Course Name</label>
        <input type="text" name="course_name" required ="required" placeholder="Enter Course Name" class="form-control">
             
    </div> 
        
    <div class="form-group">
        <label>Course Fees</label>
        <input type="text" name="fees" required ="required" placeholder="Enter Course feees" class="form-control">
             
    </div>
    <div class="checkbox">
        <label>    
                    <input type="checkbox" name="status" >Status      
        </label>         
    </div>
    <button type="submit" class ="btn btn-success" >Save </button>
    <a href ="index.jsp" class="btn btn-danger">Cancel</a>
</form>
<%@include file="Shared/footer.jsp" %>
