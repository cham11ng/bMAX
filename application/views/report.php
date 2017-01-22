<html class="wf-firasans2-n6-active wf-firasans2-n7-active wf-active">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="wifigcaptionh=device-wifigcaptionh, initial-scale=1">
	<meta name="robots" content="noindex">

	<title>bMAX - Health Assistant</title>
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/bootstrap-3.3.6/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/graph.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/custom.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/style.css" type="text/css">
	<link rel="shortcut icon" href="<?php echo base_url('assets');?>/images/logos/bmax.ico" />

	<script src="<?php echo base_url('assets');?>/js/jquery-1.12.3.min.js"></script>
	<script src="<?php echo base_url('assets');?>/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url('assets');?>/bootstrap-select-1.10.0/dist/js/bootstrap-select.min.js"></script>

</head>

<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="index.html"><img src="<?php echo base_url('assets');?>/images/logos/logo_white.png"></a>
			</div>
			<ul>
				<li>
					<a href="<?php echo base_url().'home';?>">home</a>
				</li>
				<li>
					<a href="<?php echo base_url().'about';?>">About</a>
				</li>
				<li class="selected">
					<a href="#">symptoms checker</a>
				</li>
				<li>
					<a href="<?php echo base_url('medical_term/Typhoid');?>">medical term</a>
				</li>
			</ul>
		</div>
	</div>

	<div id="body">
		<h3>Diagnosis Report</h3>
		<div class="report">
			<figure>
				<figcaption>Analysis I</figcaption>
				<section class="percentage percentage-60 danalysis"><span class="text">Typhoid</span></section>
				<section class="percentage percentage-56 banalysis"><span class="text">Pneumonia</span></section>
				<section class="percentage percentage-42 danalysis"><span class="text">Sinusitis</span></section>
				<section class="percentage percentage-30 banalysis"><span class="text">Migraine</span></section>
			</figure>
			<figure>
				<figcaption>Analysis II</figcaption>
				<section class="percentage percentage-11 danalysis"><span class="text">Bayes</span></section>
				<section class="percentage percentage-49 banalysis"><span class="text">Naive Bayes</span></section>
			</figure>

			<?php

				/*foreach ($_GET as $name => $val) {

	     			echo htmlspecialchars($name).' -> ';
	     			echo htmlspecialchars($val) . "<br />";
	     			$array = explode("-", $name);
					foreach ($array as $key => $value) {
						echo $value. '<br />';
					}
				}*/

			?>

		</div>
	</div>
	<?php
		require_once('footer.php');
	?>
</body>
</html>