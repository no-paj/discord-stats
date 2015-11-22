from bottle import route, run, template, static_file
from pymongo import MongoClient
from json import dumps

connection = MongoClient('localhost', 27017)
db = connection.bot
snapshots = [snap for snap in db.snapshots.find({}, {'_id': False})]

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='static')


@route('/')
def index():
    online = []
    for snap in snapshots:
        online.append(
            {
                "x": snap['timestamp'],
                "y": snap['online']
            }
        )
    return template('index.tpl', online=snapshots)

run(host='localhost', port=8080)