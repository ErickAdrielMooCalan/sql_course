import mysql.connector

def injection_get_user(UserToGet):

    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "erickmoo_learn",
        "user": "root",
        "password": "MyS3cureP@ssw0rd!",
        "charset": "utf8mb4"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE first_name = '" + UserToGet + "';"
    cursor.execute(query)
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

#Call the function to get Carolina's data
injection_get_user("Carolina")