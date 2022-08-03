from flask import Flask, render_template, request
import src.download_data as download_data
app = Flask(__name__, template_folder='.')

@app.route('/', methods=['GET', 'POST'])

def index():
    message = ''
    if request.method == 'POST':
        if request.form.get('download') == 'download':
            message = 'downloading data...'
            download_data.download()
            message = 'data has been downloaded !'
        else:
            pass # unknown
    #elif request.method == 'GET':
        #return render_template('index.html')
    
    return render_template("index.html",message = message)

@app.route("/hello")
def hello():
    return "Hello :)"

if __name__ == "__main__":
    app.run()



