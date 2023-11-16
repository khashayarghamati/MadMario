import neptune
from neptune.types import File

class Neptune:
    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Neptune, cls).__new__(cls)
        return cls.instance

    def __int__(self):
        self.run = neptune.init_run(
            project="khashayar/MadMario",
            api_token="eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vYXBwLm5lcHR1bmUuYWkiLCJhcGlfdXJsIjoiaHR0cHM6Ly9hcHAubmVwdHVuZS5haSIsImFwaV9rZXkiOiI2YzhjYmU2Zi03ODBjLTQ4YjEtODAzMy1lOTJhN2Q1YWU1YjUifQ==",
        )

    def save_chart(self, name, data):
        self.run[name].append(data)

    def save_figure(self, name, image):
        self.run[name].upload(image)
