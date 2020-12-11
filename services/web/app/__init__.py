from flask import Flask
from flask import request, render_template

server = Flask(__name__)

@server.route('/hello')
def hello():
    return 'Hello, World!'

@server.route('/')
def index():
    return render_template("index.html")

