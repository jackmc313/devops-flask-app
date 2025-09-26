from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():
	return "<h1>Home page</h1><a href='/about'>About</a> | <a href='/contact'>Contact</a>"
	

@app.route('/about')
def about():
	return '<p>This app is running on the flask web framework. <a href="https://flask.palletsprojects.com/">About flask</a></p>'

@app.route('/contact')
def contact():
	return "<h1>Contact Page</h1><p>Email: C23323661@mytudublin.ie</p><a href='/'>Home</a> | <a href='/about'>About</a>"

