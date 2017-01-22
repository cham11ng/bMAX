<?php
 	class General_database_model extends CI_Model {

 		// GET ALL DATA FROM ONE TABLE SORTED ORDER parameters:(TABLE NAME, ORDERBY, ASC/DESC)

 		function getAll($table, $orderby, $order) {
 			$this->db->select('*')->from($table)->order_by($orderby, $order);
	  		$query = $this->db->get();
	  		return $query->result();
 		}

 		// GET ONE ROW DATA FROM ONE TABLE parameter:(TABLE NAME, COLUMN, VALUE)

 		function getDetails($table, $column, $value) {
 			$this->db->where($column, $value)->from($table);
 			$query = $this->db->get();
 			echo $column;
 			echo $query->row();
 			echo json_encode($query->row());
 		}

 		function getDistinct($table, $value) {
 			$this->db->select($value)->from($table)->distinct();
 			$query = $this->db->get();
 			return $query->result();
 		}

 		public function joinThings($table, $columns, $joins, $ids) {

 			$where = $this->createWhere('', $ids);
			$this->db->select($columns)->from($table)->where($where);

			if (is_array($joins) && count($joins) > 0) {
				foreach($joins as $k => $v) {
					$this->db->join($v['table'], $v['condition'], $v['jointype']);
				}
			}
			return $this->db->get()->result();

		}

		public function createWhere($where, $ids) {
			$tc = count($ids);
 			$c = 0;
 			if($tc != 0) {
 				$where .= ' (';
	 			foreach ($ids as $id) {
	 				$c++;

	 				$where = $where.'diseases.d_id = '.$id;
	 				if($c != $tc)
	 					$where = $where.' OR ';
 				}
 				$where .= ')';
 			}
 			else {
 				$where .= ' diseases.d_id = 0';
 			}
 			return $where;
		}

 	};