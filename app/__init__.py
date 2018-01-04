from flask import Flask

from app.api import api
from app.ui import ui


app = Flask(__name__)
app.register_blueprint(api, url_prefix='/api')
app.register_blueprint(ui)
