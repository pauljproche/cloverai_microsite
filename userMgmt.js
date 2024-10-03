// Fetch and display users
function fetchUsers() {
    fetch('http://localhost:3000/users')  // Replace with your actual PostgREST URL
        .then(response => response.json())  // Parse the JSON response
        .then(users => {
            let userList = document.getElementById('userList');  // Get the list element
            userList.innerHTML = '';  // Clear existing list items
            users.forEach(user => {
                let li = document.createElement('li');  // Create a new list item
                li.textContent = user.username + ' (' + user.email + ')';  // Set the list item's text
                userList.appendChild(li);  // Add the list item to the list
            });
        });
}

// Add a new user
function addUser(event) {
    event.preventDefault();  // Prevent the form from submitting the traditional way

    // Get form data
    let username = document.getElementById('username').value;
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;

    // Send a POST request to add the user
    fetch('http://localhost:3000/users', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
            username: username, 
            email: email, 
            password_hash: password  // Simplified for now
        })
    }).then(() => fetchUsers());  // Refresh the list of users after adding
}

// Set up the form to call addUser when submitted
document.getElementById('userForm').addEventListener('submit', addUser);

// Fetch and display users on page load
fetchUsers();
