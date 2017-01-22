<!DOCTYPE html>
<html lang="en-US">
<title>Customers</title>
<body>

<h1>Diseases</h1>

<div>
    <table appml-data="<?php echo base_url('alldiseases');?>">
        <tr>
            <th>Disease Name</th>
        </tr>
        <tr appml-repeat="diseases">
            <td>{{disease_name}}</td>
        </tr>
    </table>
</div>
<script src="<?php echo base_url('assets/js/appml.js');?>"></script>

</body>
</html>
