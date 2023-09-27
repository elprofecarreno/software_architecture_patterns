from flask import Blueprint, render_template, redirect, url_for
from modules.auth.forms import LoginForm
from modules.auth.models import Users
from flask_login import login_user, logout_user, current_user
from . import public_bp

@public_bp.route("/", methods=["GET", "POST"])
def index():
    #form = LoginForm()
    #print('form.validate_on_submit(): {0}'.format(form.validate_on_submit()))
    #if form.validate_on_submit():
    #    username = form.username.data
    #    usersecret = form.password.data
    #    user = Users.get_by_username(username)
    #    print(f'user: {user}')
    #    print(f'user: {user.__class__}')
    #    print(f'usersecret: {usersecret}')
    #    print('pass: {0}'.format(user.usersecret))
    #    
    #    if user is not None and user.check_password(usersecret) and user.isactivate:
    #        user.usersecret=None
    #        user.isanonymous = False
    #        user.isauthenticated = True
    #        login_user(user)
    #        print(f'current_user: {current_user.username}')
    #        return redirect('../admin/')
    return render_template("index.html")