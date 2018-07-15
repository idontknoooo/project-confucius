https://www.youtube.com/watch?v=qgGIqRFvFFk&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK

https://www.youtube.com/watch?v=iwxzilyxTbQ&list=PLXmMXHVSvS-DvYrjHcZOg7262I9sGBLFR&index=2

docs.celeryproject.org/en/latest/getting-started/first-steps-with-celery.html

docs.celeryproject.org/en/latest/index.html

https://www.zhihu.com/question/24166423

https://cloud.tencent.com/developer/article/1033876

https://simpleisbetterthancomplex.com/tutorial/2017/08/20/how-to-use-celery-with-django.html

https://rakibul.gitlab.io/django-celery-1/

# 1. What's the difference between Celery and RabbitMQ?
#	Celery is a task queue which is based on distributed message queue passing. RabbitMQ is a message queue (message broker) where it is an intermediary中间件 computer program module that translates a message from the formal messaging protocol of the sender to the formal messaging protocol of the receiver. 
# RabbitMQ是个消息队列的实现。
# 将消息队列应用到何种场景，得看自己需求。你可以拿它自己实现任务分发（自己实现一个Celery），也可以拿它实现消息推送，甚至只是用它解耦应用的物理结构，等等等等...
# Celery是一个任务分发系统。(消费端，消费mq中的message，并且做下一部处理)
# 任务分发系统目的很明确，就是利用后端待命的无数worker实现一系列任务的快速处理。它跟消息队列的关系不过是利用其在分发者和执行者之间进行任务的发布/订阅。所以RabbitMQ和redis等具有发布/订阅能力的工具，理论上都能为其所用。

http://docs.celeryproject.org/en/latest/django/first-steps-with-django.html
https://rakibul.gitlab.io/django-celery-1/
https://simpleisbetterthancomplex.com/tutorial/2017/08/20/how-to-use-celery-with-django.html
