<!DOCTYPE html>
<html>
<head>
	<title>Dentro da Caixa</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style type="text/css">

		body {
			text-align: center;
			background: #E88B0C;
		}
		.barra-nav {
			background: #E84B0C;
			width: 100vw;
			height: 100px;
			position: fixed;
			top:0 ;
			left: 0;
			text-align: center;
			z-index: 1000;
		}
		.barra-separa{
			width: 100%;
			height: 110px;

		}
		.tela-inbox{
			width: 95%;
			height: 2000px;
			background: #FF6F00;
			position:absolute;
			left:2.5%;
		}

		}
		.barra-nav div *{
			margin-left: -250px;
		}
		.nova_msg {

			position: absolute;
			right: 50px;

		}
		
	</style>
</head>
<body>
	<div class='barra-nav'> 
		<div>
			<h1>Ola, {{username}}</h1>
			<a href="/" class="nova_msg">Sair</a>
			<a href="/nova_mensagem/">Nova Mensagem</a>

		</div>
	</div>

	<div class="barra-separa"></div>
	<div>
	<div class="tela-inbox">

	% if len(mensagens) > 0:
		% for id in range(len(mensagens)):
		<a href="/mensagem/{{id}}"> {{mensagens[id].titulo}} </a>
		<p> {{mensagens[id].date}} </p>
		%end
	%else:
	<p>Não há Mensagens</p>
	%end
	</div>
	<div class="coluna-dir">Anuncio 1</div>
	<div class="coluna-dir" style="top: 200px">Anuncio 2</div>
	</div>
</body>
</html>