bind = "0.0.0.0:80"
workers = 4
worker_connections = 1024
threads = 4
timeout = 300
# Access log - records incoming HTTP requests
# accesslog = "./logs/gunicorn.access.log"
# # Error log - records Gunicorn server goings-on
# errorlog = "./logs/gunicorn.error.log"
# Whether to send Django output to the error log 
capture_output = True
# How verbose the Gunicorn error logs should be 
loglevel = "debug"