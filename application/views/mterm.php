<?php
	require_once('head_defination.php');
?>

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
				<li>
					<a href="<?php echo base_url().'bselect';?>">symptoms checker</a>
				</li>
				<li class="selected">
					<a href="#">medical term</a>
				</li>
			</ul>
		</div>
	</div>


	<div class="container">
		<div id="body">
			<div class="blog">
				<div class="sidebar">
					<h3>List of Diseases</h3>
					<ul>
						<?php

							foreach($diseases as $d) {
								echo '
									<li>
										<p>
											<a href="'.base_url().'medical_term/'.$d->disease_name.'">'.$d->disease_name.'</a>
										<p>
									</li>';
							}

						?>
					</ul>
				</div>
				<div class="content">
					<?php echo '<h3 align="center">'.$info->disease_name.'</h3>';?>
					<p>
						<?php echo $info->disease_definition;?>
					</p>

					<table class="table table-hover">
					    <thead>
							<tr>
								<th>S.N.</th>
								<th>Symptoms</th>
							</tr>
					    </thead>
					    <tbody>
							<?php
								$i = 0;
								foreach ($disease_data as $one) {
									echo '
										<tr>
											<td>'.++$i.'</td>
											<td>'.$one->symptom_name.'</td>
										</tr>';
								}
							?>
					    </tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<?php
		require_once('footer.php');
	?>
</body>
</html>