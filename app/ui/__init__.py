from flask import Blueprint, render_template

ui = Blueprint('ui', __name__, template_folder='templates')


@ui.route('/')
def root():
    return render_template('root.html')
