from locust import HttpLocust, TaskSet, task

class UserBehavior(TaskSet):
    def on_start(self):
        """ on_start is called when a Locust start before any task is scheduled """
        # self.login()

    # def login(self):
        # self.client.post("/login", {"username":"ellen_key", "password":"education"})

    @task(1)
    def index(self):
        self.client.headers['Content-Type'] = "application/json"
        self.client.headers['Authorization'] = "Basic T0FVVEgyX3NrM3IsZWwkL2MtbTRdZilAPzwpOiE9LTw8cDhjLmM7Ol5sNSZkaVtx"
        self.client.get("/v1/myaccount")
        # self.client.post("/v1/users/auth",data='{"username":"ellen_key", "password":"education"}')
       
    # @task(1)
    # def profile(self):
    #     self.client.get("/profile")

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait=0
    max_wait=0

