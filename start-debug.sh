#!/usr/bin/env python3

from app import app as application

if __name__ == '__main__':
    application.run(host='0.0.0.0', port=8000, threaded=False, debug=True)
