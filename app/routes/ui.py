from flask import Blueprint, render_template

ui = Blueprint('ui', __name__)

@ui.route('/')
def get_root():
    return render_template('root.html')
