<?php
	require 'database.php';
	$employee = [];
	$date = date_create()->format('Y-m-d');
	$datetime = date_create()->format('Y-m-d H:i:s');
	$sql = "SELECT employee.firstname, employee.email, healthchecklist.* 
	FROM `healthchecklist` 
	left join employee on employee.id=healthchecklist.eid
	where healthchecklist.date='{$date}'";

	if($result = mysqli_query($con,$sql))
	{
	  $i = 0;
	  while($row = mysqli_fetch_assoc($result))
	  {
		  $symptions = array();
		if ($row['cold'] ==1) {
			$symptions[] = "Cold";
		}
		if ($row['cough'] ==1) {
			$symptions[] = "Cough";
		}
		if ($row['fever'] ==1) {
			$symptions[] = "Fever";
		}
		if ($row['difficultyinbreath'] ==1) {
			$symptions[] = "Difficulty In Breathing";
		}
		if ($row['lossofsenses'] ==1) {
			$symptions[] = "Loss Of Senses For Smell And Taste";
		}
		
		echo '<h3>Employee List</h3>
				
				  <table class="table table-hover text-nowrap">
					<thead>
					  <tr>
						<th>Firstname</th>
						<th>Email</th>
						<th>Symptoms</th>
						<th>Health Issue</th>
					  </tr>
					</thead>
					<tbody>
					<tr">
						<td>'+$row['firstname']+'</td>
						<td>'+$row['email']+'</td>
						<td> 
						  <ul class="list-unstyled">
							<li>
							  $symptions
							</li>
						  </ul>
						</td>
						<td>='+(($row['cold']+ $row['cough']+ $row['fever'] + $row['difficultyinbreath']+ $row['lossofsenses'])/5)*100; +'%</td>
					</tr>
					</tbody>
				  </table>
				</div>
				<!-- /.card-body -->

			  <!-- /.card-body -->
			</div>';
		/*$employee[$i]['firstName'] 	= $row['firstname'];
		$employee[$i]['emailId'] 	= $row['email'];
		$employee[$i]['cold'] 		= $row['cold'];
		$employee[$i]['cough'] 		= $row['cough'];
		$employee[$i]['fever'] 		= $row['fever'];
		$employee[$i]['dib'] 		= $row['difficultyinbreath'];
		$employee[$i]['los'] 		= $row['lossofsenses'];
		$symptions = array();
		if ($row['cold'] ==1) {
			$symptions[] = "Cold";
		}
		if ($row['cough'] ==1) {
			$symptions[] = "Cough";
		}
		if ($row['fever'] ==1) {
			$symptions[] = "Fever";
		}
		if ($row['difficultyinbreath'] ==1) {
			$symptions[] = "Difficulty In Breathing";
		}
		if ($row['lossofsenses'] ==1) {
			$symptions[] = "Loss Of Senses For Smell And Taste";
		}
		
		$employee[$i]['symptoms'] 	= $symptions;
		$employee[$i]['unhealty']	= (($row['cold']+ $row['cough']+ $row['fever'] + $row['difficultyinbreath']+ $row['lossofsenses'])/5)*100;
		*/$i++;
	  }
	}
?>