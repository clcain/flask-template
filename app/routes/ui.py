from flask import Blueprint, current_app, render_template

ui = Blueprint('ui', __name__)
app = current_app

@ui.route('/')
def get_root():
    return render_template('root.html')
