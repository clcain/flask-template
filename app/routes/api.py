import datetime

from flask import Blueprint, current_app

api = Blueprint('api', __name__)
app = current_app
logger = app.logger

@api.route('/time')
def get_api_time():
    return datetime.datetime.now().isoformat()
