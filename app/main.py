from flask import Flask
import platform

app = Flask(__name__)


@app.route("/v1")
def hello():
    return "Your Python version is: " + str(platform.python_version()) + "\n This is the Version 1 endpoint"


if __name__ == '__main__':
    app.run(threaded=True, debug=False)
