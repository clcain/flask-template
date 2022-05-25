from flask import Flask

from app.routes.ui import ui
from app.routes.api import api

app = Flask(__name__, static_url_path='')
app.register_blueprint(ui)
app.register_blueprint(api, url_prefix='/api')
