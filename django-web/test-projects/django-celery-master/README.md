# My local machine
- Terminal 1:
- (optional) Source virtual env: `source venv/bin/activate`
- Start RabbitMQ: `sudo service rabbitmq-server start`
- Terminal 2:
- Source virtual env: `source venv/bin/activate`
- Start server: `python3 manage.py runserver`
- Terminal 3: Don't source virtualenv
- Start Celery: `celery -A mycelery worker -l info` in project folder (where you can see manage.py)
- Post `http://127.0.0.1:8000/generate-user/` then enter a number
- Get `http://127.0.0.1:8000/get-task-info/?task_id=4cb062ca-ced6-4537-9f4e-d6fd0427a658` to check a task status


# mycelery
Django asynchronous task example using Celery and RabbitMQ.

## Getting Started

### Prerequisities
* Python >= 3.5.2
* RabbitMQ
* Virtualenv

### Installing
```
git clone https://github.com/mdrkb/django-celery.git
cd django-celery
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
cd mycelery
python manage.py migrate
```

### Running Django Server
```
python manage.py runserver
```

### Running RabbitMQ Worker
Open another terminal. Navigate inside ```../mycelery/mycelery/``` by activating virutal environment. Then run the following command:
```
celery -A mycelery worker -l info
```

Open browser and go to <http://127.0.0.1:8000/generate-user/>. Give input for number of users and the task will be performed asynchronously.

