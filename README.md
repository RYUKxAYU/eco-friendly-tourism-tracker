# Eco-Friendly Tourism Tracker

A Flask application to track eco-friendly actions by tourists and reward them with points.

## Features
- Add user actions and reward points.
- Track total points for each user.
- User-friendly interface.

## Tech Stack
- Backend: Flask
- Database: MySQL
- Frontend: HTML, CSS

## Setup
1. Clone the repository.
2. Install dependencies:
### Then do: pip install -r requirements.txt
3. In js file 
``` js
Set up MySQL:
```

### Then create a db using:
```sql
CREATE DATABASE eco_friendly;
```
4. Initialize the database:

### In the in the terminal run:
```python
flask db init flask db migrate -m "Initial migration" flask db upgrade
```
### Run the app file using the following command on terminal:
```
run app.py
```
