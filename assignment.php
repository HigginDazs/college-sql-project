<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Metal DB PHP</title>

<script type="text/javascript">
	
	// Variables for the table of database values, and the check values to reverse the sorting order
	var results;
	var sortedTable;
	var albumRev = false;
	var artistRev = false;
	var genreRev = false;
	var yearRev = false;
	
	// Variable for which sort button is used
	var whichButton = 0;
	
	// Store the table data in a new multidimensional array
	function tableData()
	{
		results = document.getElementById("table");
		sortedTable = new Array();
				
		for (i = 1; i < results.rows.length; i++)
		{
			sortedTable[i-1] = new Array();
			for (j = 0; j < results.rows[i].cells.length; j++)
			{
				sortedTable[i-1][j] = results.rows[i].cells[j].innerHTML;
			}
		}	
	}
	
	// The following functions sort the array based on the button that is pressed and displays it in the table
	// Sorts the array by the album title
	function album()
	{
		if (whichButton != 1)
		{
			sortedTable.sort(byTitle);
			albumRev = false;
		}
		
		if (albumRev)
		{
			sortedTable.reverse();
		}
		
		for (i = 1; i < results.rows.length; i++)
		{
			for (j = 0; j < results.rows[i].cells.length; j++)
			{
				results.rows[i].cells[j].innerHTML = sortedTable[i-1][j]
			}
		}
		
		albumRev = true;
		whichButton = 1;
	}
	
	function byTitle(a, b)
	{
          if      (a[0] > b[0]) return 1;
          else if (a[0] < b[0]) return -1;
          else                  return 0;
	}
	
	// Sorts the array by the artist
	function artist()
	{
		if (whichButton != 2)
		{
			sortedTable.sort(byArtist);
			artistRev = false;
		}
		
		if (artistRev)
		{
			sortedTable.reverse();
		}
		
		for (i = 1; i < results.rows.length; i++)
		{
			for (j = 0; j < results.rows[i].cells.length; j++)
			{
				results.rows[i].cells[j].innerHTML = sortedTable[i-1][j]
			}
		}
		
		artistRev = true;
		whichButton = 2;
	}
	
	function byArtist(a, b)
	{
          if      (a[1] > b[1]) return 1;
          else if (a[1] < b[1]) return -1;
          else                  return 0;
	}
	
	// Sorts the array by genre
	function genre()
	{
		if (whichButton != 3)
		{
			sortedTable.sort(byGenre);
			genreRev = false;
		}
		
		if (genreRev)
		{
			sortedTable.reverse();
		}
		
		for (i = 1; i < results.rows.length; i++)
		{
			for (j = 0; j < results.rows[i].cells.length; j++)
			{
				results.rows[i].cells[j].innerHTML = sortedTable[i-1][j]
			}
		}
		
		genreRev = true;
		whichButton = 3;
	}
	
	function byGenre(a, b)
	{
          if      (a[2] > b[2]) return 1;
          else if (a[2] < b[2]) return -1;
          else                  return 0;
	}
	
	// Sorts the array by year
	function year()
	{
		if (whichButton != 4)
		{
			sortedTable.sort(byYear);
			yearRev = false;
		}
		
		if (yearRev)
		{
			sortedTable.reverse();
		}
		
		for (i = 1; i < results.rows.length; i++)
		{
			for (j = 0; j < results.rows[i].cells.length; j++)
			{
				results.rows[i].cells[j].innerHTML = sortedTable[i-1][j]
			}
		}
		
		yearRev = true;
		whichButton = 4;
	}
	
	function byYear(a, b)
	{
          if      (a[3] > b[3]) return 1;
          else if (a[3] < b[3]) return -1;
          else                  return 0;
	}
	
	
</script>

<style type="text/css">
<!--
body {
	background-image: url(background.jpg);
	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed;
}

h1,p {color:red; text-align:center; font-family:Palatino, 'Book Antiqua', serif}
#table {
		color:red;
		text-align:center;
		font-family:Palatino, 'Book Antiqua', serif;
		border-color:red
}

tr, td {border-style:dotted hidden hidden hidden}
th {border-style:hidden}

button {
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
		background-color:black;
		border-color:red;
		color:red;
		font-size:12pt;
		font-family:Palatino, 'Book Antiqua', serif;
}
-->
</style>

</head>

<body onload="tableData()">

<h1>
	Metal Album Database
</h1>

<table id='table' border='2' align='center'>
	<tr>
        <th><button onClick="album()">Album</button></th>
        <th><button onClick="artist()">Artist</button></th>
        <th><button onClick="genre()">Genre</button></th>
        <th><button onClick="year()">Year</button></th>
	</tr>
	
	

	<?php
		// List of POST variables gotten from the submit form
		$db_connect = mysqli_connect('cs1.ucc.ie', 'cth1', 'shitieco', 'mscim2017_cth1');
		$search_val = $_POST['searchbar'];
		$search_filter = $_POST['filter'];
		
		// Attempt to connect to the mysqli server
		if($db_connect)
		{
			
			//Attempt to select the database
			//$db_select = mysqli_select_db('mscim2017_cth1');
			
			//if($db_select)
			//{
				// Check which submit button was pressed
				if (isset($_POST['submit']))
				{
					// Check is there data in the search bar
					if(!empty($search_val))
					{
						$result = mysqli_query($db_connect, "SELECT * FROM albums WHERE `$search_filter` LIKE '%$search_val%'");
						
						if($result)
						{					
							// Fill a table with the results of the database search
							while ($record = mysqli_fetch_row($result))
							{					
								echo "<tr>";
								echo "<td>",$record[1],"</td>";
								echo "<td>",$record[2],"</td>";
								echo "<td>",$record[3],"</td>";
								echo "<td>",$record[4],"</td>";
								echo "</tr>";
							}
										
						}
						else print("<p>Could not connect to table</p>");
					}
					
					else
					{
						// Print this if the user entered no seach value
						$result = null;
						print("<p>No search value entered</p>");
					}
				}
				// Check if the show all submit button was pressed
				elseif (isset($_POST['all']))
				{
					// Search the database for ALL entries
					$result = mysqli_query($db_connect, "SELECT * FROM albums");
					if($result)
						{					
						
							// Print ALL entries from the database into a table
							while ($record = mysqli_fetch_row($result))
							{					
								echo "<tr>";
								echo "<td>",$record[1],"</td>";
								echo "<td>",$record[2],"</td>";
								echo "<td>",$record[3],"</td>";
								echo "<td>",$record[4],"</td>";
								echo "</tr>";
							}
										
						}
						else print("<p>Could not connect to table</p>");
				}
			//}
			//else print("<p>Could not connect to database</p>");
			
			mysqli_close($db_connect);
		}
		else print("<p>Could not connect to mysqli</p>");
	?>

</table>
</body>

</html>
