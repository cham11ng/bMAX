<?php
class Hierarchy_model extends CI_Model {

    private $data;
    private $handler;

    function __Construct() {
 			parent::__Construct ();
 			$this->data[] = array(array());
 		}

		public function fetchChildren($parent, $level, $datas) {

		    foreach ($datas as $key => $row) {

		    	if ($row->parent == $parent) {
		    		$row->level = $level;
	                $this->data[] = $row;
			        $this->fetchChildren($row->q_id, $level+1, $datas);
		    	}

		    }
		    return $this->data;

		}

	};
?>