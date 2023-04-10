<%--
  Created by IntelliJ IDEA.
  User: sbitn
  Date: 07/04/2023
  Time: 00:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
  <%@include file="base.jsp"%>
</head>
<body>

        <div class="container mt-3">

          <h1>Add Employee Form</h1>
          <form action="insertEmployee" method="post">

            <div class="row">
              <div class="col">
                <div class="form-group">
                  <label for="name">Name</label> <input type="text"
                     class="form-control" id="name" name="name"
                      placeholder="Enter Name">
                </div>
              </div>
              <div class="col">
                <div class="form-group">
                  <label for="designation">Designation</label> <input type="text"
                     class="form-control" id="designation" name="designation"
                      placeholder="Enter Designation">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col">
                <div class="form-group">
                  <label for="department">Department</label> <input
                  type="text" class="form-control" id="department"
                  name="department" placeholder="Enter department">
                </div>
              </div>
              <div class="col">
                <div class="form-group">
                  <label for="salary">Salary</label> <input type="number"
                     class="form-control" id="salary" name="salary"
                     placeholder="Enter Salary">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <div class="form-group">
                  <label for="address">Address</label>
                  <textarea class="form-control" id="address" name="address"
                            rows="5" placeholder="Enter Address"></textarea>
                </div>
              </div>
            </div>

            <a href="${pageContext.request.contextPath }/"
               class="btn btn-warning"> Back </a>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
</body>
</html>
