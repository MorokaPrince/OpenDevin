# backend/src/app.py
from flask import Flask, request, jsonify
import os
import requests
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

CHATGPT_API_KEY = os.getenv('CHATGPT_API_KEY')

@app.route('/ollama', methods=['POST'])
def ollama():
    if not CHATGPT_API_KEY:
        return jsonify({'error': 'ChatGPT API key is not set.'}), 500

    data = request.json
    response = requests.post(
        'https://api.openai.com/v1/engines/davinci-codex/completions',
        headers={'Authorization': f'Bearer {CHATGPT_API_KEY}'},
        json=data
    )
    return response.json()

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
