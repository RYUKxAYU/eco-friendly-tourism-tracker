from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from config import Config

app = Flask(__name__)
app.config.from_object(Config)

db = SQLAlchemy(app)

from models import User, Action

@app.route('/')
def index():
    users = User.query.all()
    return render_template('index.html', users=users)

@app.route('/add_action', methods=['POST'])
def add_action():
    username = request.form['username']
    action_type = request.form['action_type']
    points_awarded = int(request.form['points_awarded'])

    user = User.query.filter_by(username=username).first()
    if user:
        action = Action(user_id=user.id, action_type=action_type, points_awarded=points_awarded)
        db.session.add(action)
        user.points += points_awarded
        db.session.commit()
        return redirect(url_for('index'))
    else:
        return "User not found", 404

if __name__ == "__main__":
    app.run(debug=True)
