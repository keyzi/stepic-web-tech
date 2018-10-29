from re import sub

def app(environ, start_response):
	"""wsgi minimal app.
	$ gunicorn hello.app
	"""
	output = sub ('&','\n',environ('QUERY_STRING',''))
	
	start_response('200 OK','[('Content-Type', 'text/plain')]
	return iter([str.encode(output)])
	