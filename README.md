# 🧠 Task Management Application
The Task Management Application is a comprehensive platform designed to help users manage their tasks efficiently. It provides a robust set of features, including task creation, deletion, updating, and retrieval, as well as user authentication and analytics. The application is built using Flask, a popular Python web framework, and utilizes a database to store user and task data. The platform aims to simplify task management, enhance productivity, and provide valuable insights through analytics.

## 🚀 Features
The Task Management Application offers the following key features:
* Task creation, deletion, updating, and retrieval
* User authentication and authorization
* Task analytics, including total tasks, completed tasks, pending tasks, and completion percentage
* Real-time communication using SocketIO
* User-friendly interface with clear and concise navigation

## 🛠️ Tech Stack
The application utilizes the following technologies:
* Flask: A micro web framework for building the application
* Flask-SQLAlchemy: An ORM for interacting with the database
* Flask-SocketIO: A library for real-time communication
* Werkzeug: A library for password hashing and verification
* Pandas and NumPy: Libraries for data manipulation and calculation
* HTML, CSS, and JavaScript: For building the user interface

## 📦 Installation
To install the application, follow these steps:
### Prerequisites
* Python 3.8 or higher
* Flask
* Flask-SQLAlchemy
* Flask-SocketIO
* Werkzeug
* Pandas
* NumPy
### Installation
1. Clone the repository using `git clone`
2. Navigate to the project directory using `cd`
3. Create a virtual environment using `python -m venv venv`
4. Activate the virtual environment using `source venv/bin/activate` (on Linux/Mac) or `venv\Scripts\activate` (on Windows)
5. Install the required packages using `pip install -r requirements.txt`
6. Initialize the database using `flask db init`
7. Run the application using `flask run`

## 💻 Usage
To use the application, follow these steps:
1. Open a web browser and navigate to `http://localhost:5000`
2. Register a new user account using the registration form
3. Log in to the application using the login form
4. Create new tasks using the task creation form
5. View and manage tasks using the task list and task details pages
6. Log out of the application using the logout button

## 📂 Project Structure
```markdown
.
├── app
│   ├── __init__.py
│   ├── app.py
│   ├── config.py
│   ├── extensions.py
│   ├── models
│   │   ├── __init__.py
│   │   ├── task.py
│   │   └── user.py
│   ├── routes
│   │   ├── __init__.py
│   │   ├── auth.py
│   │   └── task_routes.py
│   └── templates
│       ├── base.html
│       ├── dashboard.html
│       ├── home.html
│       ├── login.html
│       ├── register.html
│       └── task.html
├── analytics
│   ├── __init__.py
│   └── analytics.py
├── requirements.txt
├── venv
└── README.md
```
## 🤝 Contributing
To contribute to the project, please follow these steps:
1. Fork the repository using the GitHub fork button
2. Clone the forked repository using `git clone`
3. Create a new branch using `git branch`
4. Make changes to the code and commit them using `git commit`
5. Push the changes to the forked repository using `git push`
6. Create a pull request using the GitHub pull request button

## 📬 Contact
For any questions or concerns, please contact me at [palonalewish234@gmail.com](mailto:palonalewish234@gmail.com).
