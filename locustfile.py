from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 5)

    @task(1)
    def test_get(self):
        self.client.get("https://flaskapp562022.azurewebsites.net")

    @task(2)
    def test_post(self):
        self.client.post("https://flaskapp562022.azurewebsites.net/predict")