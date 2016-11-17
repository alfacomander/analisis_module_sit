from locust import HttpLocust, TaskSet, task

class SITPage(TaskSet):
    @task(2)
    def index(self):
        self.client.get("/")

    @task(2)
    def act(self):
        self.client.get("/act")

    @task(2)
    def dictum(self):
        self.client.get("/dictum")

    @task(2)
    def expediente(self):
        self.client.get("/expediente")

    @task(2)
    def expedient(self):
        self.client.get("/expedient")

    @task(2)
    def providence(self):
        self.client.get("/providence")

    @task(2)
    def role(self):
        self.client.get("/role")

    @task(2)
    def user(self):
        self.client.get("/user")

class UserBehavior(TaskSet):
    tasks = {SITPage:10}