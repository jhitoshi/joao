<!DOCTYPE html>
<html>
<head>
	<title>log</title>
	<style type="text/css">
		body {
			text-align: center;
			background: #1188FF;
		}
		.barra-nav {
			background: #1144BB;
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
		.coluna-esq{
			width: 75%;
			height: 2000px;
			background: #1177FF;
			position:absolute;
			left:0;
		}
		.coluna-dir{
			width: 25%;
			height: 2000px;
			background: #1188FF;
			position: absolute;
			right: 0;

		}
		.barra-nav div *{
			margin-left: -250px;
		}
		
	</style>
</head>
<body>
	<div class='barra-nav'> 
		<div>
			<h1>log</h1>
			<a href="Log-in">Log-in</a>
		</div>
	</div>

	<div class="barra-separa"></div>
	<div>
	<div class="coluna-esq">	
	<h1>{{post.name}} </h1>
	<h3>{{post.date}} </h3>
	<p>{{post.content}}</p>
	<a><img src={{"\\static/" + post.photo}}></a><br>
	<a href="/">Voltar</a>
</div>
	<div class="coluna-dir">Anuncio 1</div>
	<div class="coluna-dir" style="top: 200px">Anuncio 2</div>
	</div>
</body>
</html>