import datetime

from flask import Blueprint

api = Blueprint('api', __name__)


@api.route('/time')
def time():
    return datetime.datetime.now().isoformat()
