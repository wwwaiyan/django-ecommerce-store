#!bin/bash
# python manage.py makemigrations
# python manage.py migrate
# python manage.py collectstatic --no-input
set -e

if [ "$RUN_MIGRATIONS" = "true" ]; then
    python manage.py makemigrations
    python manage.py migrate
    python manage.py collectstatic --no-input
fi

exec "$@"

gunicorn core.wsgi:application -c gunicorn.config.py
# python manage.py runserver 0.0.0.0:80