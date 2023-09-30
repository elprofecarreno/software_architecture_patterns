from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, PasswordField, BooleanField
from wtforms.validators import DataRequired, Length


class UsersForm(FlaskForm):
    username = StringField('USERNAME', validators=[DataRequired(message="Campo USERNAME vacío."), Length(max=64, message="Tamaño máximo 64 caracteres.")])
    firstname = StringField('NOMBRE', validators=[DataRequired(message="Campo NOMBRE vacío."), Length(max=64, message="Tamaño máximo 64 caracteres.")])
    lastname = StringField('APELLIDO', validators=[DataRequired(message="Campo APELLIDO vacío."), Length(max=64, message="Tamaño máximo 64 caracteres.")])
    usersecret = StringField('CONTRASEÑA', validators=[DataRequired(message="Campo CONTRASEÑA vacío."), Length(max=64, message="Tamaño máximo 64 caracteres.")])
    copyusersecret = StringField('REPETIR CONTRASEÑA', validators=[Length(max=64, message="Tamaño máximo 64 caracteres.")])
    isactivate = BooleanField('ACTIVO', validators=[DataRequired(message="Campo ACTIVO vacío.")])
    submit = SubmitField('LOGIN')