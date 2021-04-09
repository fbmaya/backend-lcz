# encoding: utf-8
import json
from flask import Flask, jsonify


app = Flask(__name__)


@app.route('/')
def index():
    return jsonify({'name': 'ProjectRest',
                    'Version': '1.0'
                    })



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)