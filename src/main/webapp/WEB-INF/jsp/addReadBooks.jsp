<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        </head>
        <body>
            <h1> PUT THOSE BOOKS YOUVE READ HERE</h1>
            <form:form commandName = "readBooks">
            		<table>
            			<tr>
            				<td>Title of Book I've Read: </td>
            				<td> <form:input path= "readBooks" /> </td>
            				
            				<td>Author I've Read: </td>
            				<td> <form:input path= "readAuthor" /> </td>
            				
            				<td>Rating of Books Read: </td>
            				<td> <form:input path= "rating" /> </td>
            				
            			</tr>
            			<tr>
            				<td colspan="2">
            					<input type="submit" value = "Enter Books Read"/>
            					</td>
            			</tr>
            		</table>
            </form:form>
        </body>
</html>