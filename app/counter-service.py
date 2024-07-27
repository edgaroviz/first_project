 #!flask/bin/python
from flask import Flask, request, request_started

app = Flask(__name__)
post_counter = 0
get_counter = 0
@app.route('/', methods=["POST", "GET"])
def index():
    global post_counter, get_counter
    if request.method == "POST":
        post_counter+=1
        return "Hmm, Plus 1 to POST please "
    elif request.method == "GET":
        get_counter+=1
        return "Hmm, Plus 1 to GET please "

    return str(f"Our POST counter is: {post_counter} and GET counter is: {get_counter} ")

if __name__ == '__main__':
    app.run(debug=True,port=80,host='0.0.0.0')