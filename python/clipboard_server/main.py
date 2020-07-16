from flask import *
import pyperclip
app = Flask(__name__)

@app.route("/")
def default_page():
    return "Clip server"
@app.route("/copy/<path:text>")
def hello(text=None):
    print(text)
    pyperclip.copy(text)
    return text
