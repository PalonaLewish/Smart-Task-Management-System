from flask import Blueprint, request, redirect, jsonify
from extensions import socketio
from extensions import db
from models.task import Task

task = Blueprint("task", __name__)

@task.route("/add_task", methods=["POST"])
def add_task():

    title = request.form["title"]
    description = request.form["description"]
    priority = request.form["priority"]
    status = request.form["status"]

    new_task = Task(
        title=title,
        description=description,
        priority=priority,
        status=status
    )

    db.session.add(new_task)
    db.session.commit()
    socketio.emit("new_task", {
    "message": "New Task Added"
    })

    return redirect("/dashboard")


@task.route("/delete_task/<int:id>")
def delete_task(id):

    task = Task.query.get(id)

    db.session.delete(task)
    db.session.commit()

    return redirect("/dashboard")

@task.route("/api/delete_task/<int:id>", methods=["DELETE"])
def api_delete_task(id):

    task_item = Task.query.get(id)

    db.session.delete(task_item)
    db.session.commit()

    return jsonify({
        "message": "Task Deleted Successfully"
    })

@task.route("/api/update_task/<int:id>", methods=["PUT"])
def api_update_task(id):

    task_item = Task.query.get(id)

    data = request.get_json()

    task_item.title = data["title"]
    task_item.description = data["description"]
    task_item.priority = data["priority"]
    task_item.status = data["status"]

    db.session.commit()

    return jsonify({
        "message": "Task Updated Successfully"
    })

@task.route("/api/tasks")
def get_tasks():

    tasks = Task.query.all()

    task_list = []

    for t in tasks:

        task_list.append({
            "id": t.id,
            "title": t.title,
            "description": t.description,
            "priority": t.priority,
            "status": t.status
        })

    return jsonify(task_list)

@task.route("/api/add_task", methods=["POST"])
def api_add_task():

    data = request.get_json()

    new_task = Task(
        title=data["title"],
        description=data["description"],
        priority=data["priority"],
        status=data["status"]
    )

    db.session.add(new_task)
    db.session.commit()

    return jsonify({
        "message": "Task Added Successfully"
    })
