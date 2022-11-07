import social_security
import marginal_tax

from flask import Flask, request

#pip install Flask 

app = Flask(__name__)


@app.route('/payments')
def get_ss_info():
    rate = request.args.get("rate", default=.0, type=float)


    results = social_security.comparison(rate=rate)
    map_results = {"developer" : "Santana, Isory", "results": results, "rate": rate }
    return map_results

@app.route('/taxsummary')
def get_tax_summary():
    s_code= request.args.get("code", default= "SM", type=str)
    n_salary= request.args.get("salary=", default= 9_000, type=float)
    tax_summary = marginal_tax.get_tax_paid_summary(s_code, n_salary)
    return tax_summary

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000, debug=True)
