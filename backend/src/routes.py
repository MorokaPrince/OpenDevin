# backend/src/routes.py

from flask import Blueprint, jsonify, request

main_blueprint = Blueprint('main', __name__)

@main_blueprint.route('/api', methods=['GET'])
def home():
    return jsonify({"message": "Welcome to OpenDevin API"})

@main_blueprint.route('/api/users', methods=['POST'])
def add_user():
    data = request.get_json()
    # Add logic to save user to the database
    return jsonify({"message": "User added successfully", "data": data}), 201
