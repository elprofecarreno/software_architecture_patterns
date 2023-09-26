from flask import Blueprint, render_template
from flask_login import login_required, current_user
from . import admin_bp


@admin_bp.route("/")
@login_required
def index():
    print(f'user: {current_user}')
    return render_template("home.html")