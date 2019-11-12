<!DOCTYPE html>
<html>
<head>
	<title>Nova Mensagem</title>
</head>
<body>
	<form action="/nova_mensagem/" method="POST">
		Titulo<input type="text" name="Titulo"><br>
		Destinatario<input type="text" name="destinatario">
		Mensagem<textarea name="conteudo"></textarea><br>
		<input type="submit" name="Enviar">
	</form>
</body>
</html>