<!DOCTYPE html>
<html lang="en">

<head>
	<?php define('assets_url', base_url().'assets/');?>
	<title>bMAX - Health Assistant</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />

	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/custom.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/style.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url('assets');?>/css/bodypart.css" type="text/css">

	<script src="<?php echo base_url('assets');?>/js/jquery-1.12.3.min.js"></script>
	<script src="<?php echo base_url('assets');?>/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url('assets');?>/js/bodypart.js"></script>

	<link rel="shortcut icon" href="<?php echo base_url('assets');?>/images/logos/bmax.ico" />

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
					<a href="#">symptoms checker</a>
				</li>
				<li>
					<a href="<?php echo base_url().'medical_term/Typhoid';?>">medical term</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="container">
		<?php echo form_open("csymptom"); ?>
			<main>
				<div class="blog">
					<div class="sidebar">
						<h3>Select Age-Group</h3>
						<select name="agroup" class="form-control">
							<?php
								foreach ($agroup as $key => $value) {
									echo '
							<option value='.$value->age_group.'>'.$value->age_group.'</option>';
								}
							?>


						</select> <br /><br /><br /><br /><br /><br /><br />
						<h3>Select Body</h3>
						<ul>
							<li>
								<label>
									<input type="radio" name="gender" value="male" checked id="mgender" />
									<div id="btn-male" class="btn btn-secondary">&nbsp&nbspMale&nbsp&nbsp</div>
								</label>
							</li><br />
							<li>
								<label>
									<input type="radio" name="gender" value="female" id="fgender" />
									<div id="btn-female" class="btn btn-secondary">Female</div>
								</label>
							</li><br />

							<li>
								<button class="btn btn-secondary btn-lg" type="submit" value="Next">Next</button>
							</li>
						</ul>
					</div>
					<div class="content">

					</div>
				</div>
			</main>
		</form>
	</div>

<?php
require_once('footer.php');
?>
</body>
</html>