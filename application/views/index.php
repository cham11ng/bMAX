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
				<li class="selected">
					<a href="#">home</a>
				</li>
				<li>
					<a href="<?php echo base_url().'about';?>">About</a>
				</li>
				<li>
					<a href="<?php echo base_url().'bselect';?>">symptoms checker</a>
				</li>
				<li>
					<a href="<?php echo base_url().'medical_term/Typhoid';?>">medical term</a>
				</li>
				<!--<li>
					<a href="contact.html">contact</a>
				</li> -->
			</ul>
		</div>
		<div class="article">
			<a href="<?php echo base_url().'question';?>"><img src="<?php echo base_url('assets');?>/images/health_assist.jpg" alt=""></a>
			<h1>be Maximum Healthy<br />Your Health Assistant</h1>
		</div>
	</div>
	<div id="body">
		<ul>
			<li>
				<a href="Health.html"><img src="<?php echo base_url('assets');?>/images/main/1.jpg" alt=""></a>
			</li>
			<li>
				<a href="Health.html"><img src="<?php echo base_url('assets');?>/images/main/2.jpg" alt=""></a>
			</li>
			<li>
				<a href="Health.html"><img src="<?php echo base_url('assets');?>/images/main/3.jpg" alt=""></a>
			</li>
			<li>
				<a href="Health.html"><img src="<?php echo base_url('assets');?>/images/main/4.jpg" alt=""></a>
			</li>
		</ul>
	</div>
	<?php
		require_once('footer.php');
	?>
</body>
</html>