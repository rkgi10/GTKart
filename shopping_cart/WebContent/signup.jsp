<%@ page import ="java.sql.*" %>
<%
	String gender = request.getParameter("gender");
	String dob = request.getParameter("dob");
	String mobile = request.getParameter("mobile");
    String pwd = request.getParameter("pass1");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eShop","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into customers(f_name, l_name, email, mobile, password, dob,gender) values ('" + fname + "','" + lname + "','" + email + "','" + mobile + "','" + pwd + "', '" + dob + "','" + gender + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("register.html");
        out.print("Registration Successfull!"+"<a href='index.jsphtml'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>