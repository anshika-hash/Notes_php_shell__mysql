<? php
  $x=5; // global var.
  
  function myTest()
  {
    global $x;
    echo $x;  //global var.  
    echo $GLOBALS['x']; // if we want x as a global and local var.
  }
  myTest();
  
  ?>
    
//When a function is completed, all of its var. are normally deleted. sometime you want a var. not to be deleted.to do this,use the static keyword when you first declare the var
  
 <?php
 
  function myTest()
  {
    static $x=0;
    echo $x;
    $x++;
  }
  myTest();
  myTest();
  myTest();
  
  ?>
  
  // A parameter is a local var. whose value is passed to the function by the calling time.
  
  //Array
 
 <h1> Array </h1>
  <?php
    $x= array("a","b","c");
    echo $[1]; 
    ?>
  
    echo $[1]; 
    
 // An associative array.
 
 <?php
 $age = array("a"=>20, "b"=>31, "c"=>92);
 $x["anshika"] = 54;
 $x["aysush"] = 23;
 echo $age["a"];
 ?>
 
 // Loop
 
 <?php
 $x=array(10,303,45,4,23,656,56);
 ?>
 
 <html>
  <head>
  
  </head>
  <body>
  <h2> List of numbers</h2>
  <ul> 
  
  <?php
  for($i=0; $i<=9; $i++)
  {
  ?>
  <li><?php echo $x[$i]; ?></li>
  <?php
  }
  ?>
  
  </ul>
  </body>
  </html>
    
   // Loop for Associative array.
   
    <?php
 $x=array("first"=>32,"second"=>30,"third"=>45,"forth"=>4);
 ?>
 
 <html>
  <head>
  
  </head>
  <body>
  <h2> List of numbers</h2>
  <ul> 
  
  <?php
  foreach($x as $v)
  {
  ?>
  <li><?php echo $v; ?></li>
  <?php
  }
  ?>
  
  </ul>
  </body>
  </html>
   
 // String
 
 <?php
  $x="Engineering";
  ?>
  <html>
  <head>
  </head>
 <h1> <?php echo "Hello $x" ?> </h1> //if we use single quoted string are treated almost literally.
 <body 
 </body>
 </html>
 
 //How to excess HTML foam data in php.
 // Three most important point are action,method,name.
 // <form action="add.php">
 //Method get(),Post()
 //Name of data.
 //from get method data goes with append url.
 //from post method data goes in hidden object.
 
   //................................................. Home.html......................................
//with get request.
<html>
  <head>
  </head>
  <body>
  <form action="add.php" method="get">
    <input type type="text" name="user" />
    <input type="number" name="age" />
    <input type="submit" />
   </form>
   </body>
   </html>
 
 // file url="file:///F:/wamp/www/example/add.php?user=anshikatyagi&age=12
 
 //.......................................home.html....................................................................
 //with post request.
<html>
  <head>
  </head>
  <body>
  <form action="add.php" method="post">
    <input type type="text" name="user" />
    <input type="number" name="age" />
    <input type="submit" />
   </form>
   </body>
   </html>
 
 // file url="file:///F:/wamp/www/example/add.php
 //we can send more data with get.
// if we don't put attriute name so we can't access the data in php.
 
 // In add.php.......................
 //How to access form data in php by associative array
 //* $_GET[]
 //* $_POST[]
 
 <?php
 $n=$_POST["user"];
 $a=$_POST["age"];
 echo "Hello $n, your age is $a";
 ?>
 
 //.................................................********************************.........................
 
 //Add to no.
 
 // html.html file .........
 
 <html>
  <head>
  </head>
  <body>
  <form action="add.php" method="post">
    <input type type="number" placeholder="First Number" name="fno" />
    <input type="number" placeholder="second Number"  name="sno" />
    
    <input type="submit" value="add"  />
   </form>
   </body>
   </html>
 
//............... php.php file
$x = $_POST['fno'];
$y = $_POST['sno'];
$sum = $x + $y;
echo "sum of $x and $y is $sum";
?>
 
 
 //A website is hosted on a computer system known as a webserver, also called an HTTP server, and these terms can also refer to the software that runs on these systems and that retrieves and delivers  the pages in response to requests from the website users.
 // One conversation means HTTP request from browser and HTTP response back from server
 // Publicly accessible website collectively constitute the WWW.
 // Web pages are transported and accessed by HyperText Transper Procol(HTTP)
 //HTML is developed by WWW consortium. 
 //<Head> container for processing info. and metadata for an HTML doc.
 // Formating tag <br/>, and <hr/>
// hyperlink <a href=" "> link</a> for jump to a new doc. 
 //comments in html.
 <!--
 -->
 
 //
 // html file
 
 <html>
 <head>
 </head>
 <body>
  <form action="insert.php" method="post">
    <input type="number" placeholder="Enter book id" name="bookid"/>
    <input type="text" placeholder="Enter title" name="title"/>
     <input type="text" placeholder="Enter price" name="price"/>
     <input type="submit" value="insert"/>
 </form>
 </body>
 </html>
 
 //php.php file
 
 <?php
  $bookid = $_POST['bookid'];
  $title = $_POST['title'];
  $price = $_POST['price'];
  $con = mysqli_connect('localhost', 'root');
  mysqli_select_db($con,'bd3');
  $q="insert into book (bookid,title,price) values ($bookid,'$title',$price)";
  mysqli_query($con,$q);
  mysqli_close($con);
 ?>
 
 
 
 
 
 
 
 
 
 
 
