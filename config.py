class Config:
    SQLALCHEMY_DATABASE_URI = "postgresql://postgres:Hash#@localhost/task_manager"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SECRET_KEY = "secretkey"