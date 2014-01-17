<html>

<?php 
$nColumns = 3;
$courseList = array(array("244, 252, or 292", "Differential Equations"),
					array("250", "Introductory Linear Algebra"),
					array("251 or 291", "Multivariable Calculus"),
					array("300", "Introduction to Mathematical Reasoning"),
					array("311", "Advanced Calculus I"),
					array("312", "Advanced Calculus II"),
					array("348", "Cryptography"),
					array("350", "Linear Algebra"),
					array("356", "Theory of Numbers"),
					array("361", "Set Theory"),
					array("403", "Introductory Theory of Functions of a Complex Variable"),
					array("411", "Mathematical Analysis I"),
					array("412", "Mathematical Analysis II"),
					array("423", "Elementary Partial Differential Equations"),
					array("428", "Graph Theory"),
					array("432", "Introduction to Differential Geometry"),
					array("435", "Geometry"),
					array("441", "Introductory Topology I"),
					array("442", "Introductory Topology II"),
					array("451", "Abstract Algebra I"),
					array("452", "Abstract Algebra II"),
					array("454", "Combinatorics"),
					array("461", "Mathematical Logic"),
					array("477", "Mathematical Theory of Probability"));

	function showClass($courseNumber, $courseName, $objectName){
		return "<INPUT type='checkbox' name='".$objectName."' value='".$courseNumber."'>".$courseNumber.": ".$courseName."</INPUT></br>";		
	}					
					
	function createAllClasses($array,$objectName){
		$nPerColumn = 8;
		for ($i=0; $i<$nColumns; $i++){
			print_r($i);
			print_r("<div>");
			
			for($j=($i*$nPerColumn); $j<(min(count($array),($i+1)*$nPerColumn)); $j++){
				print_r($j);
				print_r(showClass($array[$j][0],$array[$j][1],$objectName));
			}
			
			print_r("</div>");
		}
	}				
					

?>

<body>
<form action="propose_project.php" method="POST">
	Major
	<INPUT id="major" type="text" name="major"></INPUT> </br>
	Year
	<INPUT id="year" type="text" name="year"></INPUT> </br>
	Recommender's email address
	<INPUT id="recommender" type="text" name="recommender"></INPUT> </br>
	What are your mathematical interests? What topics would you like to learn more about? Are there any sample or past projects listed that interest you? </br>
	<INPUT id="interest" type="text" name="interest"></INPUT> </br>
	What mathematics courses have you taken? </br>
	<?php createAllClasses($courseList,"past_courses")?>
	Other math courses </br>
	<INPUT id="other_past_courses" type="text" name="other_past_courses"></INPUT> </br>
	Which math courses will you be taking while participating in the Directed Reading Program? </br>
	<?php createAllClasses($courseList,"current_courses")?>
	Why do you want to participate in the program? </br>
	<INPUT id="motivation" type="text" name="motivation"></INPUT> </br>
	What is your favorite math book, mathematical concept, theorem, or proof? Why? </br>
	<INPUT id="favorite_math" type="text" name="favorite_math"></INPUT></br>
	Besides your recommender, which mathematics faculty members or graduate students know you well? </br>
	<INPUT id="other_recommenders" type="text" name="other_recommenders"></INPUT></br>
	How did you hear about the program? 
	<SELECT name="advertising">
		<OPTION value="class">in my math class</OPTION>
		<OPTION value="email">got an email</OPTION>
		<OPTION value="professor">recommended by professor</OPTION>
		<OPTION value="poster">saw the poster</OPTION>
		<OPTION value="other">other</OPTION>
	</SELECT></br>
	Is there anything else that you would like us to know? </br>
	<INPUT id="other_info" type="text" name="other_info"></INPUT></br>
<BUTTON> submit </BUTTON>
</form>
</body>
</html>