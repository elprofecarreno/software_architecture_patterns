from flask_login import UserMixin
from werkzeug.security import generate_password_hash, check_password_hash
from persistences.db import db

class Users(UserMixin, db.Model):

    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    firstname = db.Column(db.String(150), unique=True, nullable=False)
    lastname = db.Column(db.String(150), nullable=True)
    usersecret = db.Column(db.String(512), nullable=True)
    isactivate = db.Column(db.Boolean, default=False)

    def __init__(self, id, username):
        self.username = username

    def __repr__(self):
        return f'<User {self.username}>'

    def set_password(self, password):
        self.usersecret = generate_password_hash(password)

    def check_password(self, usersecret):
        return check_password_hash(self.usersecret, usersecret)
    
    def save(self):
        if not self.id:
            db.session.add(self)
        db.session.commit()

    def delete(self):
        db.session.delete(self)
        db.session.commit()

    @staticmethod
    def get_by_id(id):
        return Users.query.get(id)
    
    @staticmethod
    def get_by_username(username):
        return Users.query.filter_by(username=username).first()
    
    @staticmethod
    def get_all():
        return Users.query.all()
