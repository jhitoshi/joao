from bottle import *
from datetime import date, datetime
import csv

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

try:			
	file = open('msgs.csv', 'r')
	file.close()
except FileNotFoundError:
	file = open('msgs.csv', 'w')
	fields = ['titulo', 'conteudo',  'destinatario', 'usuario', 'date']
	writer = csv.DictWriter(file, fieldnames=fields)
	writer.writeheader()
	file.close()

try:
	usuarios = open('lista_usuarios.csv', 'r')
	usuarios.close()
except FileNotFoundError:
	usuarios = open('lista_usuarios.csv', 'w')
	fields = ['username', 'senha']
	writer = csv.DictWriter(usuarios, fieldnames = fields)
	writer.writeheader()
	usuarios.close()


mensagens = []
mensagens_enviadas = []

def Novo_User():
	global usuarios, senha


def carregar_mensagem():
	global username, mensagens
	with open('msgs.csv', 'r', encoding = 'utf-8') as f:
		reader = csv.DictReader(f)
		for row in reader:
			new_msg = Mensagem(row['titulo'], row['conteudo'], row['destinatario'], row['usuario'], row['date'])
			if row['destinatario'] == username:
				mensagens.insert(0, new_msg)

def save_mensagens():
	global mensagens_enviadas
	with open("msgs.csv", "a", encoding='utf-8') as f:
		fields = ['titulo', 'conteudo',  'destinatario', 'usuario', 'date']
		writer = csv.DictWriter(f, fieldnames=fields)
		writer.writerow({'titulo': msg.titulo, 'conteudo': msg.conteudo, 'destinatario': msg.destinatario, 'usuario': msg.usuario, 'date': msg.date})

def salvar_usuario():
	global novo_usuario, nova_senha
	with open('lista_usuarios.csv', 'a+', encoding = 'utf-8') as file:
		fields = ['username', 'senha']
		writer = csv.DictWriter(file, fieldnames = fields)
		writer.writerow({'username': novo_usuario, 'senha':nova_senha})

username = ''
password = ''

print(os.getcwd())
@route('/')
def login():
	username = ''
	return template('login_msg')


@post('/')
def verificar():
	global username, password
	username = request.forms.get('user')
	password = request.forms.get('pass')

	with open('lista_usuarios.csv', 'r', encoding = 'utf-8') as file:
		reader = csv.DictReader(file)

		for row in reader:

			if username == row['username'] and password == row['senha']:
				text = redirect('/inbox/')
				break
			else:
				text = 'login Failed!!! Haacker <br><a href="\\">Voltar</a>'
		else: 
			text = 'Senha Errada' + '<a href = "/"> Voltar! </a>' + 'ou' + '<a href = "/cadastro/"> Cadastre-se </a>'
	return text
	
@route('/inbox/')
def inbox():
	global mensagens
	mensagens = []
	carregar_mensagem()
	return template('caixa', mensagens=mensagens, username = username)

@route('/cadastro/')
def cadastro():
	return template('Novo_User')

@post('/cadastro/')
def usuario_cadastrar():
	global novo_usuario, nova_senha
	novo_usuario = request.forms.get('novo_user')
	nova_senha = request.forms.get('novo_pass')
	salvar_usuario()
	return redirect('/')



@route('/nova_mensagem/')
def nova_msg():
	return template('nova_mensagem')

@post('/nova_mensagem/')
def nova_msg_post():
	global msg
	titulo = request.forms.titulo
	destinatario = request.forms.destinatario
	conteudo = request.forms.conteudo
	msg = Mensagem(titulo, conteudo, destinatario, username)
	mensagens_enviadas.append(msg)
	save_mensagens()
	return redirect('/inbox/')

@route('/mensagem/<id1:int>')
def mensagem(id1):
	mensagem = mensagens[id1]
	return template('mensagem_tpl', mensagem=mensagem, mensagens=mensagens)

@route('/static/<file_path:path>')
def static_path(file_path):
	main_dir = os.path.dirname(__file__)
	rel_path = "static/"
	abs_path = os.path.join(main_dir, rel_path)
	return static_file(file_path, root=abs_path)

run(reloader=True, interval = 1)
