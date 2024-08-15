import mysql.connector

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "erickmoo_learn",
    "user": "root",
    "password": "MyS3cureP@ssw0rd!"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()