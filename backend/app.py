from flask import Flask, request, jsonify
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)

@app.route('/api/upload', methods=['POST'])
def upload():
    return jsonify({'message': 'Files uploaded'}), 200

@app.route('/api/calibrate', methods=['POST'])
def calibrate():
    return jsonify({'message': 'Calibration complete'}), 200

@app.route('/api/stitch', methods=['POST'])
def stitch():
    return jsonify({'message': 'Stitching complete', 'output': 'result.png'}), 200

if __name__ == '__main__':
    app.run(debug=True, port=5000)
