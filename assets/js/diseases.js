$.getJSON('http://0.0.0.0:8080/alldiseases/', function (data) {
    let diseases = JSON.stringify(data);
})
    .fail(function (response) {
        console.log('error');
        console.log(response);
    });
