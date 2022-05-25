import datetime

from flask import Blueprint, current_app

api = Blueprint('api', __name__)

@api.route('/time')
def get_api_time():
    current_time = datetime.datetime.now().isoformat()
    current_app.logger.debug(f'Current time {current_time}')
    return current_time
