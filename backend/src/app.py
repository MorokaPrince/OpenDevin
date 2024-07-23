# src/app.py
from flask import Flask, jsonify, request
import subprocess

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(message="Hello World from Flask!")

@app.route('/ollama', methods=['POST'])
def ollama_inference():
    data = request.json
    prompt = data.get('prompt', '')

    # Run Ollama CLI command
    result = subprocess.run(['ollama', 'infer', prompt], capture_output=True, text=True)
    response = result.stdout

    return jsonify(message=response)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
