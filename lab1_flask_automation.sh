#!/bin/bash


cd /home/vagrant

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y python3-venv python3-pip


python3 -m venv .my_venv
source .my_venv/bin/activate


pip install --break-system-packages flask

cd /vagrant

cat <<EOF > hello.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def say_hello():
    return '<p>Hello World, I am a flask app!</p>'

@app.route('/about')
def about():
    return '<p>This app is running on the flask web framework. <a href="https://flask.palletsprojects.com/">About flask</a></p>'
EOF

export FLASK_APP=/vagrant/hello.py
/home/vagrant/.my_venv/bin/flask run --host=0.0.0.0 &
