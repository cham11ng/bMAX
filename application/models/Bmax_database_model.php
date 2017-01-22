<?php
 	class Bmax_database_model extends CI_Model {

 		protected function combineDiseasesTable() {
 			$this->db->from('diseases, symptoms, disease_symptom');
 			$this->db->where('diseases.d_id = disease_symptom.d_id AND symptoms.s_id = disease_symptom.s_id');

	  		return $this->db;
 		}

 		protected function getSelectedInfosQuery($sids) {
 			$this->combineDiseasesTable();
 			$tc = count($sids);

			$c = 0;
 			if($tc != 0) {
 				$whr = ' (';
	 			foreach ($sids as $id) {
	 				$c++;

	 				$whr = $whr.'symptoms.s_id = '.$id;
	 				if($c != $tc)
	 					$whr = $whr.' OR ';
 				}
 				$this->db->where($whr.')');
 			}
 			else {
 				$this->db->where('symptoms.s_id', 0);
 			}

	  		return $this->db;
 		}

 		function getInfoOfOneDiseaseFromCombinedTable($disease_name) {
 			$this->combineDiseasesTable();
 			$this->db->select('diseases.disease_name, diseases.disease_definition');
 			$this->db->where('diseases.disease_name', $disease_name);
 			$query = $this->db->get();
 			return $query->row();
 		}

 		function getInfoFromCombinedTable($column, $value, $orderby, $order) {
 			$this->combineDiseasesTable();
 			$this->db->select('*');
 			$this->db->order_by($orderby, $order);
 			$this->db->where($column, $value);

	  		$query = $this->db->get();
	  		return $query->result();
 		}

 		function getAllInfoFromCombinedTable() {
 			$this->combineDiseasesTable();
 			$this->db->select('diseases.d_id, disease_name, symptom_name, symptoms.s_id');
 			$query = $this->db->get();
 			return $query->result();
 		}

 		function getSelectedInfosFromCombinedTable($sids, $orderby, $order) {

 			$this->getSelectedInfosQuery($sids);

 			$this->db->select('disease_name, diseases.d_id');
 			$this->db->order_by($orderby, $order);
 			$this->db->distinct();
 			$tc = count($sids);

	  		$query = $this->db->get();
	  		return $query->result();

 		}

 		function getIDS($table) {
 			$array = array ();
 			foreach ($table as $key => $value) {
 				array_push($array, $value->d_id);
 			}
 			return $array;
 		}


 		function selectedRowToJSON($table, $column, $value) {

 			$this->db->select('*')->from($table)->where($column, $value)->distinct();
 			$query = $this->db->get();
 			return $query->row();

 		}


 		function selectedToJSON($select, $table) {

 			$this->db->select($select)->from($table)->distinct();
 			$query = $this->db->get();
 			return $query->result();

 		}

 	};