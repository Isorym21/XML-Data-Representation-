
import social_security
from flask import Flask

app = Flask(__name__)


@app.route('/payments')
def get_ss_info():
    results = social_security.comparison()
    map_results = {"developer" : "Santana, Isory", "results": results }
    return map_result


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000, debug=True)
