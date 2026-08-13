import mysql.connector


def connect_to_database():
    # Establish connection with MySQL database
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="your_password",
        database="disaster_db"
    )

    print("Database connection successful.")
    return connection


if __name__ == "__main__":
    connection = connect_to_database()

    if connection.is_connected():
        connection.close()
        print("Database connection closed.")
