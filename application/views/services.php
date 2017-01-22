<?php

	$diseases = array();

	foreach ($mapping as $key => $value) {
		if ($value->symptom_name ==  "Headache") {
			//$pdiseases .= ' '. $value->disease_name.' | ';
			//$diseases[] = $value->disease_name;
			$diseases[] = $value->disease_name;
		}
	}

	echo json_encode($diseases);

?>