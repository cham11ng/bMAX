<?php
	require_once('head_defination.php');
?>

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
		<h3>Symptom Checker</h3>

		<?php echo form_open("result"); ?>

			<div class="row">
				<div class="col-md-11">
					<div class="form-group">
						<label>Select multiple symptoms:</label>

						<select name="symp[]" multiple="multiple" data-max-options="5" class="selectpicker form-control" data-live-search="true" data-size="8" data-actions-box="true">
							<?php
							    foreach($symptoms as $sone) {
							    	echo '<option value="'.$sone->s_id.'">'.$sone->symptom_name.'</option>
							    	';
							    }
							?>
						</select>

					</div>
				</div>
				<div class="col-md-1">
					<?php echo form_submit("check_submit", "CHECK", 'class="btn btn-success"'); ?>
				</div>
			</div>
	</div>
	<?php
		require_once('footer.php');
	?>
</body>
</html>