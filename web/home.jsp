<%--
    Document   : home
    Created on : 08/11/2017, 19:47:22
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>!  Cursos MAGNATA ! </title>
    </head>
    <body>
        <script> var repeat = 1
            var title = document.title
            var leng = title.length
            var start = 1
            function titlemove() {
                titl = title.substring(start, leng) + title.substring(0, start)
                document.title = titl
                start++
                if (start == leng + 1) {
                    start = 0
                    if (repeat == 0)
                        return
                }
                setTimeout("titlemove()", 400)
            }
            if (document.title)
                titlemove()
        </script>
        <%@include file="WEB-INF/jspf/menu.jspf" %>


        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
