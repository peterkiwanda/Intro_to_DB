import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',    # Replace with your MySQL server host
            user='your_username', # Replace with your MySQL username
            password='your_password' # Replace with your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            # Create database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Commit changes
            connection.commit()
            
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()
