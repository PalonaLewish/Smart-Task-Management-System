import pandas as pd
import numpy as np

from models.task import Task


def task_analytics():

    tasks = Task.query.all()

    if not tasks:

        return {
            "total": 0,
            "completed": 0,
            "pending": 0,
            "percentage": 0
        }

    data = []

    for task in tasks:

        data.append({
            "status": task.status
        })

    df = pd.DataFrame(data)

    total_tasks = len(df)

    completed_tasks = len(
        df[df["status"] == "Completed"]
    )

    pending_tasks = len(
        df[df["status"] != "Completed"]
    )

    completion_percentage = np.round(
        (completed_tasks / total_tasks) * 100,
        2
    )

    return {
        "total": total_tasks,
        "completed": completed_tasks,
        "pending": pending_tasks,
        "percentage": completion_percentage
    }