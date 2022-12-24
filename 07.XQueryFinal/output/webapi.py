import socialsecurity
import Books
import marginal_tax

from flask import Flask, request

app = Flask(__name__)


@app.route('/payments')
def get_ss_info():
    rate = request.args.get("rate", default=.0, type=float)
    results = socialsecurity.comparison(rate=rate)
    map_result = {"developer": "Santana, Isory", "results": results, "rate": rate}
    return map_result

@app.route('/taxsummary')
def get_tax_summary():
    s_code = request.args.get("code", default="SM", type=str)
    n_salary = request.args.get("salary", default=9_000, type=float)
    t_year = request.args.get("year", default="2022", type=str)
    tax_summary = marginal_tax.get_tax_paid_summary(s_code, n_salary, t_year)
    return tax_summary

@app.route('/Booksummary')
def get_book_summary():

    bookinfo = Books.get_Bookinfo()


    #booksummary = {"developer": "Santana, Isory","average:",average,"total","highest","lowest"}

    return bookinfo

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9215, debug=True)
