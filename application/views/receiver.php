<!DOCTYPE html>
<html lang="en">

<head>
	<?php define('assets_url', base_url().'assets/');?>
	<title>bMAX - Health Assistant</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/custom.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/style.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url('assets');?>/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url('assets');?>/css/category.css" type="text/css">
	<link rel="shortcut icon" href="<?php echo base_url('assets');?>/images/logos/bmax.ico" />
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/bodypart.css" type="text/css">

    <script src="<?php echo base_url('assets');?>/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url('assets');?>/js/jquery-1.12.3.min.js"></script>

    <script type="text/javascript">

    	function removeQuestion(node) {
    		node = '#'+node
    		$(node).hide();

		}

		$(window).load(function() {
			$("#Pneumoinia-0").remove();
		});

		<?php
			$total_question = count($questions);

			echo "var total_question = ". json_encode($total_question) . "\n";

		?>

    	//alert(total_question);
    </script>

</head>

<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="<?php echo base_url().'home';?>"><img src="<?php echo base_url('assets');?>/images/logos/logo_white.png"></a>
			</div>
			<ul>
				<li>
					<a href="<?php echo base_url().'home';?>">home</a>
				</li>
				<li>
					<a href="<?php echo base_url().'about';?>">About</a>
				</li>
				<li class="selected">
					<a href="<?php echo base_url().'bselect';?>">symptoms checker</a>
				</li>
				<li>
					<a href="<?php echo base_url().'medical_term/Typhoid';?>">medical term</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div id="body">
			<h3>Possible Diseases</h3>
		 	<table class="table table-hover">
			    <thead>
					<tr>
						<th>S.N.</th>
						<th>Disease Name</th>
					</tr>
			    </thead>
			    <tbody>
					<?php
						$i = 0;
						foreach ($selected_diseases as $one) {
							echo '
					<tr>
						<td>'.++$i.'</td>
						<td>'.$one->disease_name.'</td>
					</tr>';
						}
					?>

			    </tbody>
			</table>
			<section id="questions">
			<?php
				echo form_open("report");

			    $btn_no = 0;

			    echo '
			    <br /><h3>Answer the following Questions : </h3>';
			    foreach ($questions as $key => $value) {

			        if($key) { // index 0 has unknown value
			        	$id = $value->disease_name.'-'.$btn_no;
			            echo '
			        <section class="question" id="'.$id.'">
			            <label>'.str_repeat('-----| ', $value->level) . $value->question.'</label><br />';

			            if($value->a1 != '') {
			                echo str_repeat('-----| ', $value->level) .'
			                <label>
				                <input type="radio" name="'.$value->disease_name.'-'.$btn_no.'-'.$value->level.'" value="'.$value->a1.'" />
				                <div onclick="removeQuestion(\''.$id.'\')" class="btn btn-secondary">'.$value->a1.'</div>
			                </label>';
			            }
			            if($value->a2 != '') {
			                echo '
			                <label>
				                <input type="radio" name="'.$value->disease_name.'-'.$btn_no.'-'.$value->level.'" value="'.$value->a2.'" />
				                <div onclick="removeQuestion(\''.$id.'\')" class="btn btn-secondary">'.$value->a2.'</div>
			                </label>';
			            }
			            if($value->a3 != '') {
			                echo '
			                <label>
				                <input type="radio" name="'.$value->disease_name.'-'.$btn_no.'-'.$value->level.'" value="'.$value->a3.'" />
				                <div onclick="removeQuestion(\''.$id.'\')" class="btn btn-secondary">'.$value->a3.'</div>
				            </label>';
			            }
			            $btn_no++;
			            echo '
			        </section>';
			        }
			    }
			    echo '
				    <section class="question">
				    	<button class="btn btn-secondary btn-lg" type="submit" value="Next">Next</button>
				    </section>';


			?>

			</div>
		</div>
	</div>
	<?php
		require_once('footer.php');
	?>
</body>
</html>