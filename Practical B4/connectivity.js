const mongoose = require('mongoose');

// Define a schema
const userSchema = new mongoose.Schema({
    name: String,
    email: String
});

// Create a model based on the schema
const User = mongoose.model('User', userSchema);

// Main async function to connect and insert
async function main() {
    await mongoose.connect("mongodb://127.0.0.1:27017/test");
    
    // Insert a single record
    const newUser = new User({ name: 'John Doe', email: 'john@example.com' });
    const savedUser = await newUser.save();
    console.log('Document inserted:', savedUser);
}

// Call main and handle success or failure
main()
    .then(() => {
        console.log("Connected to MongoDB and record inserted");
        mongoose.connection.close(); // Close connection after operation
    })
    .catch(err => {
        console.error('Connection or insertion error:', err);
        mongoose.connection.close(); // Ensure connection closes even on error
    });
