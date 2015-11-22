from bottle import route, run, template, static_file
from pymongo import MongoClient
from json import dumps

connection = MongoClient('localhost', 27017)
db = connection.bot

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='static')


@route('/')
def index():
    snapshots = [snap for snap in db.snapshots.find({}, {'_id': False})]
    snapshots_sorted = sorted(snapshots, key=lambda k: k['timestamp'])
    return template('index.tpl', online=snapshots_sorted)

run(host='0.0.0.0', port=80)