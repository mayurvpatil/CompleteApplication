from flask import Flask
import os
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route("/")
def hello_world():
    name = os.environ.get('NAME')
    
    print("Recieved request ...") 
    
    if name:
        return "Hello " + name
    else:
        return "Environment $NAME variable not exists."

if __name__ == "__main__":
    app.run(host ='0.0.0.0',port = 5001, debug = False) 