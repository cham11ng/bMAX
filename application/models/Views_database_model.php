<?php

 	class Views_database_model extends CI_Model {
 		function getViews($where) {

 			$this->db->select("count")->from("views")->where($where);
 			return $this->db;

 		}
 		function evaluateViews($where) {

 			$this->getViews($where);
 			$viewcount = $this->db->get()->row();

 			$updatedata = array (
						'count' => $viewcount->count+1
					);
			$this->db->set($updatedata);
			$this->db->where($where);
			$this->db->update('views');
			return $viewcount->count;
 		}
 	}

?>