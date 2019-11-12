<!DOCTYPE html>
<html>
<head>
	<title>Blog</title>
</head>
<body>

	<a href="/login/">Login</a>
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
		%end
	%else:
	<p>Não há posts</p>
	%end
</body>
</html>