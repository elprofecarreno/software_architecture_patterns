from flask import Blueprint, render_template
from flask_login import login_required, current_user
from . import admin_bp
from admin.forms import UsersForm
from auth.models import Users


@admin_bp.route("/")
@login_required
def index():
    print(f'user: {current_user}')
    return render_template("home.html")

@admin_bp.route("/users", methods=["GET"])
@login_required
def users():
    form = UsersForm()
    print('form.validate_on_submit(): {0}'.format(form.validate_on_submit()))
    if form.validate_on_submit():
        username = form.username.data
        usersecret = form.password.data
        user = Users.get_by_username(username)
        print(f'user: {user}')
        print(f'user: {user.__class__}')
        print(f'usersecret: {usersecret}')
        print('pass: {0}'.format(user.usersecret))
        
        if user is not None and user.check_password(usersecret) and user.isactivate:
            user.usersecret=None
            user.isanonymous = False
            user.isauthenticated = True
            login_user(user)
            print(f'current_user: {current_user.username}')
            #return redirect('../admin/')
    return render_template("users.html", form=form)    
