// src/App.js
import React, { useState } from 'react';

function App() {
  const [message, setMessage] = useState('');

  const fetchMessage = async () => {
    const response = await fetch('http://localhost:5000/ollama', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ prompt: 'Hello, Ollama!' }),
    });
    const data = await response.json();
    setMessage(data.message);
  };

  return (
    <div className="App">
      <header className="App-header">
        <button onClick={fetchMessage}>Fetch Message</button>
        <p>{message}</p>
      </header>
    </div>
  );
}

export default App;
