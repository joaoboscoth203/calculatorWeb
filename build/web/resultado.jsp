<%-- 
    Document   : resultado
    Created on : 23/09/2022, 09:02:56
    Author     : joaobosco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Resultado</title>
    </head>
    <body>
        <div class="div-result">
            <%
                String svalorA = request.getParameter("valorA");
                String svalorB = request.getParameter("valorB");
                String sopcao = request.getParameter("opcao");

                double dvalorA = Double.parseDouble(svalorA);
                double dvalorB = Double.parseDouble(svalorB);
                double resultado = 0;

                if(sopcao.equals("+")){
                    resultado = dvalorA + dvalorB;
                }else if(sopcao.equals("-")) {
                    resultado = dvalorA - dvalorB;
                }else if(sopcao.equals("*")) {
                    resultado = dvalorA * dvalorB;
                }else if(sopcao.equals("/")) {
                    resultado = dvalorA / dvalorB;
                }
                double resto = resultado - Math.floor(resultado);

                if (resto == 0) { 
                    int resultadoint = (int)Math.round(resultado);
                    out.print("Resultado: "+resultadoint);
                } else {
                    out.print("Resultado: "+resultado);
                }                        
            %>
            
            <div class="div-button"><a href="index.html">voltar - fazer novo calculo</a></div>
        </div>
            
    </body>
</html>
