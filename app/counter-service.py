#  #!flask/bin/python
# from flask import Flask, request, request_started
#
# app = Flask(__name__)
# post_counter = 0
# get_counter = 0
# @app.route('/', methods=["POST", "GET"])
# def index():
#     global post_counter, get_counter
#     if request.method == "POST":
#         post_counter+=1
#         return "Hmm, Plus 1 to POST please "
#     else:
#         get_counter+=1
#         return str(f"Our POST counter is: {post_counter} and GET counter is: {get_counter} ")
#
# if __name__ == '__main__':
#     app.run(debug=True,port=8080,host='0.0.0.0')

 #!flask/bin/python
from flask import Flask, request, request_started

app = Flask(__name__)
post_counter = 0
get_counter = 0
@app.route('/', methods=["POST", "GET"])
def index():
    global post_counter
    global get_counter
    if request.method == "POST":
        post_counter+=1
        return "Hmm, Plus 1 please..."
    else:
        get_counter+=1
        return str(f"Our POST counter is: {post_counter} and our GET counter is {get_counter} ")
if __name__ == '__main__':
    app.run(debug=True,port=80,host='0.0.0.0')