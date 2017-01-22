<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	function __Construct() {
  		parent::__Construct ();
   		$this->load->database();						// load database
   		$this->load->model('bmax_database_model');		// load bMAX database model
   		$this->load->model('general_database_model');	// load general database model
   		$this->load->model('views_database_model'); 	// load views database model
   		$this->load->model('hierarchy_model');
 	}

	public function index() {

		//$this->diseases("Typhoid");
		$this->home();

	}

	public function home() {
		$this->data['views'] = $this->views_database_model->evaluateViews('name="index.php"');
		$this->load->view("index", $this->data);
	}

	public function csymptom() {
		/*$selected_body_parts = $this->input->get('body_parts');
		$gender = $this->input->get('gender');
		$agroup = $this->input->get('agroup');

		echo $gender.$agroup;
		foreach ($_GET['body_parts'] as $key => $value) {
			echo $value.'<br />';
		}*/
		$this->data['symptoms'] = $this->general_database_model->getAll('symptoms', 'symptom_name', 'ASC');
		$this->data['views'] = $this->views_database_model->evaluateViews('name="csymptom.php"');
		$this->load->view("csymptom", $this->data);
	}

	public function medical_term($d_name) {
		// for disease list
		$this->data['diseases'] = $this->general_database_model->getAll('diseases', 'd_id', 'ASC');

		// for disease (symptom count, disease name, disease discription)
		$this->data['info'] = $this->bmax_database_model->getInfoOfOneDiseaseFromCombinedTable($d_name);

		// for all combination of data
		$this->data['disease_data'] = $this->bmax_database_model->getInfoFromCombinedTable('diseases.disease_name', $d_name, 'diseases.d_id', 'DESC');

		$this->data['views'] = $this->views_database_model->evaluateViews('name="mterm.php"');
		$this->load->view("mterm", $this->data);
	}

	public function about() {
		$this->data['views'] = $this->views_database_model->evaluateViews('name="about.php"');
		$this->load->view('about', $this->data);
	}

	public function diseases($encoded_d_name) {
        $this->output->set_header('Content-Type: application/json', TRUE);
		$d_name = urldecode($encoded_d_name);
		$this->data['jsonValues'] = array (
            'diseases' => $this->bmax_database_model->selectedRowToJSON('diseases', 'disease_name', $d_name)
		);
		$this->load->view("json", $this->data);
	}

	public function alldiseases() {
        //$this->output->set_header('Content-Type: application/json', TRUE);
        $this->output->set_content_type('application/json', 'utf-8');
        //$this->output->set_header('Access-Control-Allow-Origin', TRUE);
		$this->data['jsonValues'] = array (
            'diseases' => $this->bmax_database_model->selectedToJSON('disease_name', 'diseases')
		);
		$this->load->view("json", $this->data);
	}

	public function allsymptoms() {
        $this->output->set_header('Content-Type: application/json', TRUE);
		$this->data['jsonValues'] = array (
            'diseases' => $this->bmax_database_model->selectedToJSON('symptom_name', 'symptoms')
		);
		$this->load->view("json", $this->data);
	}

	public function agegroups() {
        $this->output->set_header('Content-Type: application/json', TRUE);
        $this->data['jsonValues'] = array (
        	'diseases' => $this->data['jsonValues'] = $this->bmax_database_model->selectedToJSON('age_group', 'age_gender')
		);
		$this->load->view("json", $this->data);
	}

	public function result() {
		// retriving selected symptoms
		$selected_symptoms_id = $this->input->post('symp');

		// dealer join
        $question_join = array(
            array (
                'table' => 'diseases',
                'condition' => 'diseases.d_id = questionnaire.d_id',
                'jointype' => 'INNER'
            )
        );

		// selected symptoms combined table
		$this->data['selected_diseases'] = $this->bmax_database_model->getSelectedInfosFromCombinedTable($selected_symptoms_id, 'diseases.disease_name', 'ASC');


		$this->data['disease_ids'] = $this->bmax_database_model->getIDS($this->data['selected_diseases']);

		// join question with disease
		$this->data['question_all'] = $this->general_database_model->joinThings('questionnaire', 'questionnaire.*, diseases.disease_name', $question_join, $this->data['disease_ids']);

		$this->data['questions'] = $this->hierarchy_model->fetchChildren(0, 0, $this->data['question_all']); // parent = 0, level = 0

		$this->data['views'] = $this->views_database_model->evaluateViews('name="csymptom.php"');
		$this->load->view('receiver', $this->data);
	}

	public function bselect() {
		$this->data['views'] = $this->views_database_model->evaluateViews('name="bselect.php"');
		$this->data['agroup'] = $this->general_database_model->getDistinct('age_gender', 'age_group');
		$this->load->view('bselect', $this->data);
	}

	public function wservice() {

		$this->data['mapping'] = $this->bmax_database_model->getAllInfoFromCombinedTable();
		$this->load->view('wservice', $this->data);

	}

	public function services() {

		$this->data['mapping'] = $this->bmax_database_model->getAllInfoFromCombinedTable();
		$this->load->view('services', $this->data);

	}

	public function java() {

		$this->load->view('javascript');

	}

	public function submit() {

		$this->load->view('submit');

	}

	public function report() {
		$this->data['views'] = $this->views_database_model->evaluateViews('name="bselect.php"');
		$this->load->view('report', $this->data);
	}

	public function listing() {
		$this->load->view('listing');
	}
}

?>
