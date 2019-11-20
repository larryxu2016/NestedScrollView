<?php
	header("Access-Control-Allow-Origin: *");
	header("Expires: 0");
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Cache-Control: post-check=0, pre-check=0", false);
	header("Pragma: no-cache");
	header("Content-Type: application/json; charset=UTF-8");
	
	$servername = "localhost";
	$username = "root";
	$password = "password";
	$dbname = "gradebook";
	
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "select crs_title, crs_name, class_term, class_start_date, class_end_date, 
assign_id, assign_name, assign_module, assign_submodule, assign_due_date, assign_total_pts, 
earned_points, accumulative_points_earned, accumulative_points_total from class 
join enrollment as e using (class_id) 
join course using (crs_id) 
join assignment as assign using (class_id) 
left join grade using (assign_id) 
where e.stu_id = '0619831' order by assign.assign_id asc";
	mysqli_query($conn, 'SET NAMES utf8');
	$res = $conn->query($sql);
	$result = array();
	$i = 0;
	$assign_module_name = "";
	$assign_week = "";
	while( $row = $res->fetch_assoc() ) {
		
		if ($row["assign_module"] !== $assign_module_name) {
			$assign_module_name = $row["assign_module"];
			if (isset($result[$i])) {
				if (array_key_exists("courseTitle",$result[$i])) {
					if ($row["crs_title"] === $result[$i]['courseTitle']) {
						array_push($result[$i]['assignments'], 
							array(
								'assignName' => "mod:" . $assign_module_name,
								'assignDueDate' => $row["assign_due_date"],
								'assignTotalPts' => "0",
								'assignEarnedPts' => $row["earned_points"]
							)
						);
					}
					else {
						array_push($result, array(
								'courseTitle' => $row["crs_title"],
								'courseName' => $row["crs_name"],
								'classTerm' => $row["class_term"],
								'classStartDate' => $row["class_start_date"],
								'classEndDate' => $row["class_end_date"],
								'ptsEanred' => $row["accumulative_points_earned"],
								'accumulTotalPts' => $row["accumulative_points_total"],
								'assignments' => array(
									array(
										'assignName' => "mod:" . $assign_module_name,
										'assignDueDate' => $row["assign_due_date"],
										'assignTotalPts' => "0",
										'assignEarnedPts' => $row["earned_points"]
									)
								)
							)
						);
						$i++;
					}
				}
				else {
					array_push($result, array(
							'courseTitle' => $row["crs_title"],
							'courseName' => $row["crs_name"],
							'classTerm' => $row["class_term"],
							'classStartDate' => $row["class_start_date"],
							'classEndDate' => $row["class_end_date"],
							'ptsEanred' => $row["accumulative_points_earned"],
							'accumulTotalPts' => $row["accumulative_points_total"],
							'assignments' => array(
								array(
									'assignName' => "mod:" . $assign_module_name,
									'assignDueDate' => $row["assign_due_date"],
									'assignTotalPts' => "0",
									'assignEarnedPts' => $row["earned_points"]
								)
							)
						)
					);
				}
			}
			else {
				array_push($result, array(
						'courseTitle' => $row["crs_title"],
						'courseName' => $row["crs_name"],
						'classTerm' => $row["class_term"],
						'classStartDate' => $row["class_start_date"],
						'classEndDate' => $row["class_end_date"],
						'ptsEanred' => $row["accumulative_points_earned"],
						'accumulTotalPts' => $row["accumulative_points_total"],
						'assignments' => array(
							array(
								'assignName' => "mod:" . $assign_module_name,
								'assignDueDate' => $row["assign_due_date"],
								'assignTotalPts' => "0",
								'assignEarnedPts' => $row["earned_points"]
							)
						)
					)
				);
			}
			
		}

		if ($row["assign_submodule"] !== $assign_week && !is_null($row["assign_submodule"])) {
			$assign_week = $row["assign_submodule"];
			if (isset($result[$i])) {
				if (array_key_exists("courseTitle",$result[$i])) {
					if ($row["crs_title"] === $result[$i]['courseTitle']) {
						array_push($result[$i]['assignments'], 
							array(
								'assignName' => "wk:" . $assign_week,
								'assignDueDate' => $row["assign_due_date"],
								'assignTotalPts' => "0",
								'assignEarnedPts' => $row["earned_points"]
							)
						);
					}
					else {
						array_push($result, array(
								'courseTitle' => $row["crs_title"],
								'courseName' => $row["crs_name"],
								'classTerm' => $row["class_term"],
								'classStartDate' => $row["class_start_date"],
								'classEndDate' => $row["class_end_date"],
								'ptsEanred' => $row["accumulative_points_earned"],
								'accumulTotalPts' => $row["accumulative_points_total"],
								'assignments' => array(
									array(
										'assignName' => "wk:" . $assign_week,
										'assignDueDate' => $row["assign_due_date"],
										'assignTotalPts' => "0",
										'assignEarnedPts' => $row["earned_points"]
									)
								)
							)
						);
						$i++;
					}
				}
				else {
					array_push($result, array(
							'courseTitle' => $row["crs_title"],
							'courseName' => $row["crs_name"],
							'classTerm' => $row["class_term"],
							'classStartDate' => $row["class_start_date"],
							'classEndDate' => $row["class_end_date"],
							'ptsEanred' => $row["accumulative_points_earned"],
							'accumulTotalPts' => $row["accumulative_points_total"],
							'assignments' => array(
								array(
									'assignName' => "wk:" . $assign_week,
									'assignDueDate' => $row["assign_due_date"],
									'assignTotalPts' => "0",
									'assignEarnedPts' => $row["earned_points"]
								)
							)
						)
					);
				}
			}
			else {
				array_push($result, array(
						'courseTitle' => $row["crs_title"],
						'courseName' => $row["crs_name"],
						'classTerm' => $row["class_term"],
						'classStartDate' => $row["class_start_date"],
						'classEndDate' => $row["class_end_date"],
						'ptsEanred' => $row["accumulative_points_earned"],
						'accumulTotalPts' => $row["accumulative_points_total"],
						'assignments' => array(
							array(
								'assignName' => "wk:" . $assign_week,
								'assignDueDate' => $row["assign_due_date"],
								'assignTotalPts' => "0",
								'assignEarnedPts' => $row["earned_points"]
							)
						)
					)
				);
			}
			
		}

		if (isset($result[$i])) {
			if (array_key_exists("courseTitle",$result[$i])) {
				if ($row["crs_title"] === $result[$i]['courseTitle']) {
					array_push($result[$i]['assignments'], 
						array(
							'assignName' => $row["assign_name"],
							'assignDueDate' => $row["assign_due_date"],
							'assignTotalPts' => $row["assign_total_pts"],
							'assignEarnedPts' => $row["earned_points"]
						)
					);
				}
				else {
					array_push($result, array(
							'courseTitle' => $row["crs_title"],
							'courseName' => $row["crs_name"],
							'classTerm' => $row["class_term"],
							'classStartDate' => $row["class_start_date"],
							'classEndDate' => $row["class_end_date"],
							'ptsEanred' => $row["accumulative_points_earned"],
							'accumulTotalPts' => $row["accumulative_points_total"],
							'assignments' => array(
								array(
									'assignName' => $row["assign_name"],
									'assignDueDate' => $row["assign_due_date"],
									'assignTotalPts' => $row["assign_total_pts"],
									'assignEarnedPts' => $row["earned_points"]
								)
							)
						)
					);
					$i++;
				}
			}
			else {
				array_push($result, array(
						'courseTitle' => $row["crs_title"],
						'courseName' => $row["crs_name"],
						'classTerm' => $row["class_term"],
						'classStartDate' => $row["class_start_date"],
						'classEndDate' => $row["class_end_date"],
						'ptsEanred' => $row["accumulative_points_earned"],
						'accumulTotalPts' => $row["accumulative_points_total"],
						'assignments' => array(
							array(
								'assignName' => $row["assign_name"],
								'assignDueDate' => $row["assign_due_date"],
								'assignTotalPts' => $row["assign_total_pts"],
								'assignEarnedPts' => $row["earned_points"]
							)
						)
					)
				);
			}
		}
		else {
			array_push($result, array(
					'courseTitle' => $row["crs_title"],
					'courseName' => $row["crs_name"],
					'classTerm' => $row["class_term"],
					'classStartDate' => $row["class_start_date"],
					'classEndDate' => $row["class_end_date"],
					'ptsEanred' => $row["accumulative_points_earned"],
					'accumulTotalPts' => $row["accumulative_points_total"],
					'assignments' => array(
						array(
							'assignName' => $row["assign_name"],
							'assignDueDate' => $row["assign_due_date"],
							'assignTotalPts' => $row["assign_total_pts"],
							'assignEarnedPts' => $row["earned_points"]
						)
					)
				)
			);
		}
	}
	
	$conn->close();
	echo json_encode($result);
?>