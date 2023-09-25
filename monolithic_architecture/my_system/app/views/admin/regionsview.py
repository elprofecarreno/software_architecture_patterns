from flask import Blueprint, render_template

regions = Blueprint('regions', __name__, url_prefix="/regions")

@regions.route("/")
def index():
    return render_template("regions.html")