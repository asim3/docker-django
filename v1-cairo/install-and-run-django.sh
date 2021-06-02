cd /your_project_root \
  && pip3 install --no-cache-dir --quiet -r ./requirements.txt \
  && python3 manage.py makemigrations \
  && python3 manage.py migrate \
  && python3 manage.py runserver 0.0.0.0:8000
  

# gunicorn --workers 3 --bind 0.0.0.0:8000 my_project.wsgi
