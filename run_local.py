from app import app as application


def main():
    application.run(host='0.0.0.0', port=8000, threaded=True, debug=False)


if __name__ == '__main__':
    main()
