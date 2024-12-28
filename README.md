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

### Prerequisites
- Python 3.6+
- MySQL

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/eco-friendly-tourism-tracker.git
    cd eco-friendly-tourism-tracker
    ```

2. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

3. Set up MySQL:
    ```sql
    CREATE DATABASE eco_friendly;
    ```

4. Initialize the database:
    ```bash
    flask db init
    flask db migrate -m "Initial migration"
    flask db upgrade
    ```

5. Run the application:
    ```bash
    python app.py
    ```

## Usage
- Open your web browser and go to `http://127.0.0.1:5000/` to access the application.

## Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
