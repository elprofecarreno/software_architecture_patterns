from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, PasswordField
from wtforms.validators import DataRequired, Length


class LoginForm(FlaskForm):
    username = StringField('NOMBRE', validators=[DataRequired(message="Campo USERNAME vacío."), Length(max=64, message="Tamaño máximo 64 caracteres.")])
    password = PasswordField('PASSWORD', validators=[DataRequired(message="Campo PASSWORD vacío."), Length(min=6, max=32, message="Tamaño entre 6 y 32 caracteres.")])
