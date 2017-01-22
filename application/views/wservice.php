<?php

	if (isset($_POST["name"]) && isset($_POST["gender"]) && isset($_POST["agroup"]) && isset($_POST["symptoms"])) {

		$name = $_POST["name"];
		$gender= $_POST["gender"];
		$agroup = $_POST["agroup"];
		$symptoms = $_POST["symptoms"];

		$pdiseases = '';

		//$diseases = array();
		$diseases = array();

		foreach ($mapping as $key => $value) {
			if ($value->symptom_name ==  $symptoms) {
				//$pdiseases .= ' '. $value->disease_name.' | ';
				//$diseases[] = $value->disease_name;
				$diseases[] = $value->disease_name;
			}
		}

		/*$report = array (
		    "name"  => $name,
		    "gender" => $gender,
		    "agroup" => $agroup,
		    "symptoms" => $symptoms,
		    "diseases" => $diseases
		);
		echo var_dump($report);
		*/
		//echo var_dump($diseases);
		echo json_encode($diseases);

		//echo strtoupper($name) . ' you may have POSSIBLE DISEASES : | '.$pdiseases;

	}
	else {

		//show_404();
		echo "Something Went Wrong";

	}

?>