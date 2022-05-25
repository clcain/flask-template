#!/usr/bin/env python3

from app import app as application

if __name__ == '__main__':
    application.run(host='127.0.0.1', port=8000, threaded=False, debug=True)
