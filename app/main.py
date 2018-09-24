from flask import Flask
import platform

app = Flask(__name__)


@app.route("/v1")
def one():
    return "Your Python version is: " + str(platform.python_version()) + "\n This is the Version 1 endpoint"

@app.route("/v2")
def two():
    return "Your Python version is: " + str(platform.python_version()) + "\n This is the Version 2 endpoint"

if __name__ == '__main__':
    app.run(threaded=True, debug=False)
