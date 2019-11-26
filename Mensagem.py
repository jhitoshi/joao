from datetime import date, datetime

class Mensagem(object):
	def __init__(self, titulo, conteudo, destinatario, usuario, date=datetime.now()):
		self.titulo = titulo
		self.destinatario = destinatario
		self.usuario = usuario
		self.conteudo = conteudo
		if isinstance(date,datetime):
			self.date = date.strftime('%d/%m/%y %H:%M' )
		else:
			self.date = date
