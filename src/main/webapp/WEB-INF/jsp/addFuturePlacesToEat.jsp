<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"    
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add Goal</title>
        
          <style>
        		.error {
        		color: #ff0000;
        		}
        		
        		.errorBlock {
        		color: #000;
        		background-color: #ffEEEE;
        		border: 3px solid #ff0000;
        		padding: 8px;
        		margin: 16px;
        		}
        </style>
        
        </head>
        <body>
        <form:form commandName = "goal">
        <form:errors path="*" cssClass = "errorBlock" element= "div" />
        
        		<table>
        		<tr>
        			<td>Enter Pages:</td>
        			<td><form:input path="pages"/></td>
        			<td><form:errors path="pages" cssClass="error" /></td>
        			
        		</tr>
        		<tr>
        		    <td colspan = "3">
        		    		<input type = "submit" value ="Enter Goal Pages"/>
        		    </td>
        		 
        		</tr>
        		
        		</table>
        </form:form>

        </body>
</html> --%>







<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    		<link type="text/css" rel="stylesheet" href="ReadBook.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Places I've Tried</title>
        <script type= "text/javascript" src="jquery-3.1.1.slim.js"></script>
       
        		
        		</script>
        
        </head>
        <body>
            <h1> Add Restaurant I Tried</h1>
            <form:form commandName = "foodToTry">
            		<table>
            			<tr>
            				
            				<td>Name of Restaurant I Want to Try: </td>
            				<td> <form:input path= "placesToTry" /> </td>
            				
            				 <td>Type of food: </td>
            				<td> <form:input path= "placesToTryType" /> </td>
            				
            				
            			</tr>
            			
            			<tr>
            				<td colspan="5">
            					<input type="submit" value = "Submit"/>
            				</td>
            			</tr>
            			
            		</table>
            </form:form>
            
            
            
<%--                         <h1>Our goal for the day is: ${goal.pages } pages</h1> --%>
                        
                <form:form commandName = "foodToTry">
            		<table id = "resultTable">
<%-- 					<tr>
       					<td>
            					<form:select id="activities" path= "activity"></form:select>
            				</td>
            			</tr> --%>
            				
            				<tr>
            					<th>Restaurant I want to Try: </th>
            					<th>Type of Food: </th>
            				</tr>
            				<tr>
            					<td> ${foodToTry.placesToTry} </td>
            					<td>${foodToTry.placesToTryType} </td>

            				</tr>
            			
            		</table>
            </form:form>
            
        </body>
</html>