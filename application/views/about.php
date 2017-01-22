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
				<li class="selected">
					<a href="#">About</a>
				</li>
				<li>
					<a href="<?php echo base_url().'bselect';?>">symptoms checker</a>
				</li>
				<li>
					<a href="<?php echo base_url().'medical_term/Typhoid';?>">medical term</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
		<h3>About Us</h3>
		<div>
			<div class="featured">
				<h2>featured</h2>
				<img src="<?php echo base_url('assets');?>/images/featured.jpg" alt="Health Assistant">
				<h3>About bMAX</h3>
				<p style="text-align: justify;">
					Our Project entitled “bMAX-Health Assistant” aims to build an application which detect and recognize the diseases. The main aim of the project is to take the symptoms from the user as input and use the data mining technique in order to display the probable causes for the symptoms entered.
				</p>
				<h5>Manish Acharya	[2069/BCT/14]</h5>
				<h5>Sagar Chamling Rai	[2069/BCT/23]</h5>
				<h5>Ushmita Tuladhar	[2069/BCT/40]</h5>

			</div>
			<div class="section">
				<div class="article">
					<h2>Health</h2>
					<p style="padding: 0px;">
						Human health is a relative state in which one is able to function well physically, mentally and socially within the environment in which one is living. The human body is an amazing machine. It has the ability to repair itself, to fight off attacking microorganism and adapt to a variety of situations.
					</p>
				</div>
				<div class="newsletter">
					<img src="<?php echo base_url('assets');?>/images/skinhead.png" alt="">
					<p>
						Worried of not getting an appointment?
					</p>
				</div>
			</div>
		</div>

		<h3 style="padding-top: 30px">Abstract</h3>
		<p style="text-align: justify;">
			“Health is a state of complete physical, mental and social well-being and not merely the absence of disease or infirmity” according to WHO. Generally, people face a lot of health related problems and do not have the idea about the reason of those problems. This project “bMAX-Health Assistant” meaning “Be Maximum Healthy” is an application that helps the users to get the information about the disease according to the symptoms they face. It is a Health Assistant because it assists the user about the possible disease but does not give the exact information. The project mainly requires the data about the conditions of a human body, its symptoms and its respective causes. Main aim of this project is to develop an Expert System with Data Mining that immediately diagnoses disease. This system will be used to quickly find out the disease and generate information about the patient status with the help of data mining algorithm i.e. Naive Bayesian Classifier. This system interface does not require involvement of doctor for analysing case rather it will analyse disease based on symptoms entered. It helps to understand symptoms and possible signs of illness, causes and complications.
		</p>

		<p style="text-align: center;">
			<b>Contact Us</b><br />
			<b>Address:</b> Somewhere Kathmandu, Nepal<br />
			<b>Email:</b> admin@bmax.com <br />
			<b>Phone:</b> +9779878777888 <br />
		</p>

	</div>
	<?php
		require_once('footer.php');
	?>
</body>
</html>