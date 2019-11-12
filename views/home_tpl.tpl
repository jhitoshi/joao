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
			<h1 >log</h1>
			<a href="/login/">Log-in</a>
		</div>
	</div>

	<div class="barra-separa"></div>
	<div>
	<div class="coluna-esq">
	%for i in users:

		%if username == i[0]and password == i[1]:
			<a href="/novo_post/">Novo Post</a>
				<p>Ola,{{username}}</p>
		%end	
			
	%end
	% if len(posts) > 0:
		% for id in range(len(posts)):
		<h2><a href="/post/{{id}}"> {{posts[id].name}} </a></h2>
		<h4>{{posts[id].date}} </h4>
		<p>{{posts[id].content}} </p>
		<a><img src={{"\\static/" + posts[id].photo}}></a>
		%end
	%else:
	<p>Nãoh á posts</p>
	%end
	</div>
	<div class="coluna-dir">Anuncio 1</div>
	<div class="coluna-dir" style="top: 200px">Anuncio 2</div>
	</div>
</body>
</html>