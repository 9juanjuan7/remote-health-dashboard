from flask import Flask, request, jsonify
from firebase import firebase

# Create a Flask app

app = Flask(__name__)

# Firebase config (replace with your details)
DB_URL = "https://remote-health-dashboard-default-rtdb.firebaseio.com/"
# DB_SECRET = "?auth=YOUR_DATABASE_SECRET"  # Optional for auth; get from Firebase console

# Firebase config
fb = firebase.FirebaseApplication(DB_URL, None)  # auth=None for Test Mode

@app.route('/data', methods=['GET'])
def read_all():
    return jsonify(fb.get('/', None) or {})

@app.route('/add', methods=['POST'])
def add():
    data = request.get_json()
    path = request.args.get('path', '/')
    result = fb.post(path, data)
    return jsonify({"id": result['name']}), 201

@app.route('/delete/<path:p>', methods=['DELETE'])
def delete(p):
    fb.delete(f'/{p}', None)
    return jsonify({"status": "deleted"})

if __name__ == '__main__':
    app.run(debug=True, port=5000)
