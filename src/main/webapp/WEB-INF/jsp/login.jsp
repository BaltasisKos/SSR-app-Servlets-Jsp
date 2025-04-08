<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
     integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
	<%@ include file="header.jsp"%>
    <div class="mx-auto" style="height: 650px;">
     <div class="text-center auth-text mt-5 center2">
      <h2>Αυθεντικοποίηση χρήστη

      </h2>
    </div>
      <div class="center mt-4">
          <div class="auth-text text-center mb-3">
              <h2>Σύνδεση</h2>
              <div style="color: red;">${error}</div>
          </div>
          <div class="auth-text text-center mb-3">
               <c:if test="${requestScope.isError == 'true'}">
                        <p style="color: red">Login Error</p>
                    </c:if>
          </div>

          <div class="mb-4 text-center">
              <p class="font-sans mt">Παρακαλώ εισάγετε όνομα χρήστη και κωδικό για να συνδεθείτε:</p>
          </div>

          <div>
            <form action="${pageContext.request.contextPath}/login" method="POST">
                <div class="form-group">
                    <label class="font-strong font-sans text-dark" for="user">Χρήστης:</label>
                    <input type="text" id="user" class="form-control" placeholder="Εισάγετε το username">
                </div>

                <div class="form-group">
                    <label class="text-dark" for="password">Κωδικός πρόσβασης:</label>
                    <input type="password" id="password" class="form-control" placeholder="Εισάγετε τον κωδικό πρόσβασης">
                </div>


                <div class="d-flex justify-content-between align-items-center">
                    <input class="btn btn-primary" type="submit" id="submit" value="ΣΥΝΔΕΣΗ">


                </div>

                <div class="row mt-4">
                    <p>Forgot your password?</p>
                </div>
            </form>
        </div>
      </div>
  </main>

  <div class="sgn text-center mt-5">
      <div class="form-footer">
          <p>Don't have an account? <a href="${pageContext.request.contextPath}/register">Sign up here!</a></p>
      </div>
  </div>
</div>

    <%@include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.min.js"></script>
</body>
</html>