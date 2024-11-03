const mysql = require('mysql2');

// Create a MySQL connection
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',          // Default MySQL username
    password: '',           // Default MySQL password (leave empty if no password)
    database: 'test_db'
});

// Connect to the database
connection.connect((err) => {
    if (err) {
        return console.error('Error connecting: ' + err.message);
    }
    console.log('Connected to MySQL!');
});

// Insert a new record
const query = "INSERT INTO users (username, email) VALUES (?, ?)";
const values = ['JohnDoe', 'john@example.com'];

connection.execute(query, values, (err, result) => {
    if (err) {
        return console.error('Error inserting data: ' + err.message);
    }
    console.log('Record inserted with ID:', result.insertId);
});

// Close the connection
connection.end();
