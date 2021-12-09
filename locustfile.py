from locust import HttpUser, task, between

class Nginx(HttpUser):
  wait_time = between(5, 15)

  @task
  def index(self):
    self.client.get("/")