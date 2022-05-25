import sys
sys.path.insert(0, '/var/www')
import logging
logging.basicConfig(stream=sys.stderr, level=logging.WARN)
from app import app as application
