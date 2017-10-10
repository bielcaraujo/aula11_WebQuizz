<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz - WebQuiz</title>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Quiz</h2>
        <h3>Questões: </h3>
        <form> 
            <%for (Questao q: Quiz.getQuestoes()){%>
            <h4><%=q.getPergunta()%></h4>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[0]%>"/>
            <%=q.getAlternativas()[0]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[1]%>"/>
            <%=q.getAlternativas()[1]%>
             <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[2]%>"/>
             <%=q.getAlternativas()[2]%>
            <%}%>
            <br/><br/>
            <input type="submit" name="Finalizar" value="Finalizar"/>
        </form>
    </body>
</html>
