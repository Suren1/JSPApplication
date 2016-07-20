<%@page import="com.leapforg.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapforg.jspapp.dao.CourseDAO"%>
<%@page import="com.leapforg.jspapp.entity.Course"%>
<%
    if(request.getMethod().equalsIgnoreCase("post")){
        CourseDAO courseDAO = new CourseDAOImpl();
        Course c= new Course();
        
        c.setName(request.getParameter("course_name"));
        c.setFees(Double.parseDouble(request.getParameter("fees")));
        c.setStatus((request.getParameter("status")!=null));
        try{
            
            if(courseDAO.insert(c)>0){
                response.sendRedirect("index.jsp? success");
            
            }
            else{
                response.sendRedirect("add.jsp? failed");
            
            }
        }catch (Exception e){
            out.println(e.getMessage());
        }
    }
    else{
        out.println("<h1>hero plteko bro</h1>");
    }


%>