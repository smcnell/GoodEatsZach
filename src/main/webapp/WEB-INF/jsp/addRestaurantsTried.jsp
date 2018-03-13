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
        
        <script type= "text/javascript">
        $(document).ready(
        		function() {
        		$.getJSON('<spring:url value="activities.json"/>', {
        			ajax: 'true'
        		}, function(data){
        			var html = '<option value="">--Please Select One--</option>';
        			var len= data.length;
        			for (var i=0; i < len; i++) {
        				html += '<option value= "' + data[i].desc + '">' 
        				+ data[i].desc + '</option>';
        			}
        			html +='</option>';
        			
        			$('#activities').html(html);
        			});
        		});
        		
        		</script>
        
        </head>
        <body>
            <h1> Add Restaurant I Tried</h1>
            <form:form commandName = "readBooks">
            		<table>
            			<tr>

<%--             				<td>
            					<form:select id="activities" path= "activity"></form:select>
            				</td> --%>
            				
            				<td>Name of Restaurant I Tried: </td>
            				<td> <form:input path= "placesTried" /> </td>
            				
            				 <td>Type of food: </td>
            				<td> <form:input path= "placesTriedType" /> </td>
            				
            				<td>Rating: </td>
            				<td> <form:input path= "placesTriedRating" /> </td>
            				
            				<td>What I ordered: </td>
            				<td> <form:input path= "placesTriedOrdered" /> </td>
            				
            				
            			</tr>
            			
            			<tr>
            				<td colspan="5">
            					<input type="submit" value = "Submit"/>
            				</td>
            			</tr>
            			
            		</table>
            </form:form>
            
            
            
<%--                         <h1>Our goal for the day is: ${goal.pages } pages</h1> --%>
                        
                <form:form commandName = "readBooks">
            		<table id = "resultTable">
<%-- 					<tr>
       					<td>
            					<form:select id="activities" path= "activity"></form:select>
            				</td>
            			</tr> --%>
            				
            				<tr>
            					<th>We've eaten at: </th>
            					<th>Type of Food: </th>
            					<th>Rating: </th>
            					<th>Ordered: </th>
            					
            				</tr>
            				<tr>
            					<td> ${readBooks.placesTried} </td>
            					<td>${readBooks.placesTriedType} </td>
            					<td> ${readBooks.placesTriedRating} </td>
            					<td> ${readBooks.placesTriedOrdered} </td>
            					
            				</tr>
            			
            		</table>
            </form:form>
            
        </body>
</html>