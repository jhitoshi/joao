<!DOCTYPE html>
<html>
<head>
	<title>Dentro da Caixa</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<style type="text/css">
		main{
			width: 70vw;
			margin:25px;
		}
		#separa{
			height: 10px;
		}
		#sep{
			width: 95vw;
			left: 2.5vw;
			position: relative;
		}
		.hero{
			background-image: url("../static/background-close-up-color-1227648.jpg");
			background-size: cover;
			background-attachment: fixed;
			display: flex;
			justify-content:center;
			align-items: center;
			height: 15vh;
			color: white;
		}
		#msg{
			position: relative;
			left:25px;
			min-height: 60px;
		}

		#msg input{
			height: 40px;
		}
		#submit{
			margin-left: auto;
		}
	</style>
</head>
<body>
	<div class="hero">
		<h1>Nova Mensagem</h1>
	</div>
	<div class="pos-f-t">
		<div class="collapse" id="navbarTEC">
			<div class="bg-secondary">
				<div id="sep">
					<div id="separa"></div>
					<h5 class="text-light">Olá User</h5>
					<ul class="list-group">
						<a href="/inbox/" class="list-group-item-action list-group-item">Inbox</a>
						<a href="/" class="list-group-item-action list-group-item">Sair</a>
					</ul>
				</div>	
			</div>			
		</div>
		<nav class="navbar navbar-dark bg-secondary">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTEC" aria-controls="navbarTEC"aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
	</div>
	<div id="separa"></div>
	<main>
		<div class="row">
			<div class="col-6">
				<form action="/nova_mensagem/" method="POST">

					<div class="row" id="msg">
						<div class="col-3">
							Titulo
						</div>
						<div class="col-8">	
						<input type="text" name="titulo"><br>
						</div>
					</div>
					<div class="row" id="msg">
						<div class="col-3">
							Destino
						</div>
						<div class="col-8">	
						<input type="text" name="destinatario">
						</div>
					</div>
					<div class="row" id="msg">
						<div class="col-3">
							Conteudo
						</div>
						<div class="col-8">	
						<textarea name="conteudo" rows="6" cols="50"></textarea>
						</div>

					</div>
					<div class="row" id="msg">
						<div class="col-12" id="submit">
							<input type="submit" name="Enviar">
						</div>
						
					</div>
				</form>
										
			</div>
	
		</div>


		
	</main>
</body>
</html>