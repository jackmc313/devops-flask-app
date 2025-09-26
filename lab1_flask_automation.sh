#!bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install nano vim python-is-python3 python3-venv python3-pip
python -m  venv .my_venv
source .myvenv/bin/activate

pip install flask

cat <<EOF > hello.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():
	return '<p>Hello World, I am a flask app|</p>'

@app.route('/about')
def about():
	return '<p>This app is running on the flask web framework. <a href="https://flask.palletsprojects.com/">About flask</a>>/p>'
EOF

export FLASK_APP=hello.py 
flask run --host=0.0.0.0

