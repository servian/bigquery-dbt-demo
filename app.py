import subprocess
from subprocess import Popen, PIPE
from subprocess import check_output
from flask import Flask

def get_shell_script_output_using_communicate():
    session = subprocess.Popen(['./dbt-script.sh'], stdout=PIPE, stderr=PIPE)
    stdout, stderr = session.communicate()
    if stderr:
        raise Exception("Error "+str(stderr))
    return stdout.decode('utf-8')

def get_shell_script_output_using_check_output():
    stdout = check_output(['./some.sh']).decode('utf-8')
    return stdout

app = Flask(__name__)

@app.route('/')
def home():
    return '<pre>'+get_shell_script_output_using_communicate()+'</pre>'

if __name__ == "__main__":
    app.run(debug=True)