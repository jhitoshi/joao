<!DOCTYPE html>
<html>
<head>
	<title>Cadastro</title>
	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/Style_Login.css">
	<style type="text/css">
		body{
			background-image: url("../../static/architectural-design-architecture-blue-416998.jpg");
			background-size: cover;
			font-family: sans-serif;
			font-size: 30px;
		}
		form{
			justify-content: center;
			align-items:center;
			display: flex;
			flex-direction: column;
			text-align: center
			top: 40%;
		}
		a{
			justify-content: center;
			align-items:center;
			display: flex;
			flex-direction: column;
			text-align: center
			top:40%;
		}
	</style>
</head>
<body>
	<form method='POST' action='/cadastro/'>
		<input type="text" name="novo_user" placeholder="USERNAME"><br><br>
		<input type="password" name="novo_pass" placeholder="SENHA"><br><br>
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>