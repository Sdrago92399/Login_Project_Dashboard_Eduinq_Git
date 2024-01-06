<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Room</title>
</head>
<body>
    <h2>Chat Room</h2>

    <form action="chat" method="post">
        <input type="hidden" name="username" value="${requestScope.messages.get(0).getUsername()}">
        <textarea name="message" rows="4" cols="50" placeholder="Type your message..." required></textarea>
        <input type="submit" value="Send">
    </form>

    <hr>

    <ul>
        <c:forEach var="message" items="${requestScope.messages}">
            <li>${message.getUsername()}: ${message.getMessage()}</li>
        </c:forEach>
    </ul>
</body>
</html>
