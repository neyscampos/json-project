<!doctype html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<script>
	$(document).ready(
			function() {

				$("#btn1").on(
						'click',
						function() {
							$.ajax({
								url : "pessoa.json",
								dataType : "json",
								type : "get",
								cache : false,
								success : function(data) {
									$("#tabela tbody").empty();
									$(data.pessoa).each(
											function(i, data) {
												$("#tabela tbody").append(
														"<tr>");
												$("#tabela tbody").append(
														"<td>" + data.id
																+ "</td>");
												$("#tabela tbody").append(
														"<td>" + data.nome
																+ "</td>");
												$("#tabela tbody").append(
														"<td>" + data.email
																+ "</td>");
												$("#tabela tbody").append(
														"<td>" + data.idade
																+ "</td>");
												$("#tabela tbody").append(
														"</tr>");
											});
								}

							});

						});

				$("#btn2").on(
						'click',
						function() {
							$.getJSON('pessoa.json', function(result) {
								msg = "";
								$.each(result.pessoa, function(i, data) {
									msg += "<br/>" + data.id + "," + data.nome
											+ "," + data.email + ","
											+ data.idade;
								});
								$("#tela").html(msg);
							});

						});

			});
</script>
</head>
<body>
	<table id="tabela" border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Idade</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<br />
	<br />
	<button id="btn1">Mostrar os Dados</button>
	<button id="btn2">Mostrar os Dados</button>
	<p />
	<div id="tela"></div>

</body>

</html>



