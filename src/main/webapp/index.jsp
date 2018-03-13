<html>
<link type="text/css" rel="stylesheet" href="main.css"/>
<body>
<h1>GoodEats</h1>
<h2 class = "fade1">A place to try new things</h2>
<h3 class= "fade2">Here you can keep track of places you want to try</h3>
<h3 class = "fade3">and you can remember what you liked</h3>
<h3 class= "fade4">Never hear the words "I don't know where to eat" ever again.</h3>



<button id ="myButton">Add Restaurants I've tried</button>
<button id ="myButton2">Add Restaurants I'd Like To Try </button>


<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "http://localhost:8080/GoodEats/addReadBooks.html";
    };
</script>

<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "http://localhost:8080/GoodEats/addFuturePlacesToEat.html";
    };
</script>

</body> 
</html>
