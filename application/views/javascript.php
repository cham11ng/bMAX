

<!DOCTYPE html>
<html>
<body>

<p>Click the button to display an alert box.</p>

<button onclick="myFunction(\'Hi\')">Try it</button>

<script>
function myFunction(java) {
	<?php
		$php_array = array('abc','def','ghi');
		$php_value = 'haha';
		$php_value = json_encode($php_value);
		$js_array = json_encode($php_array);
		echo "var javascript_array = ". $js_array . "\n";
		echo "var javascript_array2 = ". $php_value . "\n";
	?>
    alert(java);
}
</script>

</body>
</html>
