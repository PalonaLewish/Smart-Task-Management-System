from flask import Flask, render_template
from extensions import db, socketio

app = Flask(__name__)
app.config.from_object("config.Config")

db.init_app(app)
socketio.init_app(app)

from models.user import User
from models.task import Task

from routes.auth import auth
from routes.task_routes import task

app.register_blueprint(auth)
app.register_blueprint(task)

from analytics.analytics import task_analytics

@app.route("/")
def home():
    return render_template("home.html")
@app.route("/dashboard")
def dashboard():

    tasks = Task.query.all()

    analytics = task_analytics()

    return render_template(
        "dashboard.html",
        tasks=tasks,
        analytics=analytics
    )

if __name__ == "__main__":
    socketio.run(app, debug=True)