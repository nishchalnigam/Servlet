<html>
    <head>
        <title>Login</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <h2>Login</h2>
        <form method = "post" action="Servlet1" id="loginfrm">
            <input type="hidden" name="log" />
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="name" id="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id="password" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="Login" value="Login" id="submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <% if (session.getAttribute("wrongname") != null && session.getAttribute("wrongname").equals("nishchal") == false )
        {
              
        %>
         You are not Nishchal. You are ${wrongname}
        <%
            session.setAttribute("wrongname",null);
    }
        
    %>

    </body>
</html>
