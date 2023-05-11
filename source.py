from flask import *
import sqlite3

app=Flask(__name__)
@app.route("/")
def index():
	return render_template("index.html")

@app.route("/vendor")
def vendor():
	return render_template("vendor.html")

@app.route("/vendor",methods = ["POST","GET"])
def vendor_registrations():
	msg="msg"
	if request.method == "POST":
		try:
			Company_name = request.form["Company_name"]
			first_name = request.form["first_name"]	   	
			last_name = request.form["last_name"]
			address = request.form["address"]
			city = request.form["city"]
			postal_code = request.form["postal_code"]
			contact_number = request.form["contact_number"]
			email_address = request.form["email_address"]
			GST_number = request.form["GST_number"]
			website = request.form["webiste"]
			with sqlite3.connect("project_trade_final.db") as con:
				cur=con.cursor()
				cur.execute("INSERT into vendor(Company_name,first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,webiste) values (?,?,?,?,?,?,?,?,?,?)",(Company_name,first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,webiste))
				con.commit()
				msg="Vendor details updated successfully"
		except:
			con.rollback()
			msg="SORRY! Please fill the madantory details"
		finally:
			return render_template("vendor.html",msg=msg)
			con.close()


@app.route("/vendorview")
def vendorview():
	con=sqlite3.connect("project_trade_final.db")
	con.row_factory=sqlite3.Row
	cur=con.cursor()
	cur.execute("select * from vendor")
	rows=cur.fetchall()
	return render_template("vendorview.html",rows=rows)

@app.route("/client")
def client():
	return render_template("client.html)

@app.route("/client", methods=["POST", "GET"])
def client_registrations():
	msg="msg"
	if request.method=="POST":
		try:
			Company_name = request.form["Company_name"]
			first_name = request.form["first_name"]	   	
			last_name = request.form["last_name"]
			address = request.form["address"]
			city = request.form["city"]
			postal_code = request.form["postal_code"]
			contact_number = request.form["contact_number"]
			email_address = request.form["email_address"]
			GST_number = request.form["GST_number"]
			website = request.form["webiste"]
			with sqlite3.connect("project_trade_final.db") as con:
				cur=con.cursor()
				cur.execute("INSERT into client(Company_name,first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,webiste) values (?,?,?,?,?,?,?,?,?,?)",(Company_name,first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,webiste))
				con.commit()
				msg="Client details updated successfully"
		except:
			con.rollback()
			msg="SORRY! Please fill the madantory details"
		finally:
			return render_template("client.html",msg=msg)
			con.close()




if __name__ == "__main__":
    app.run(debug = True)