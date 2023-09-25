from flask import Blueprint, render_template, redirect, url_for
from forms.loginform import LoginForm
from models.usermodels import User, get_user
from flask_login import login_user

login = Blueprint('login', __name__)

@login.route("/", methods=["GET", "POST"])
@login.route("/login", methods=["GET", "POST"])
def index():
    form = LoginForm()
    print('form.validate_on_submit(): {0}'.format(form.validate_on_submit()))
    if form.validate_on_submit():
        username = form.username.data
        password = form.password.data
        user = get_user(username)
        if user is not None and user.check_password(password):
            login_user(user)
            return redirect('../admin/')
    return render_template("login.html", form=form)