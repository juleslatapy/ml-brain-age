from flask import Flask, render_template, request
app = Flask(__name__, template_folder='.')

@app.route('/', methods=['GET', 'POST'])

def index():
    if request.method == 'POST':
        if request.form.get('download data') == 'download':
            pass
        else:
            pass # unknown
    elif request.method == 'GET':
        return render_template('index.html')
    
    return render_template("index.html")

@app.route("/hello")
def hello():
    return "Hello :)"

if __name__ == "__main__":
    app.run()



