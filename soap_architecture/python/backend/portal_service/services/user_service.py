from spyne import rpc, ServiceBase, Integer, Unicode, Array, ComplexModel, DateTime
from sqlalchemy.exc import IntegrityError
from model.models import PortalUser
from config.db import get_db_session
import traceback
    
session = get_db_session()

class UserModel(ComplexModel):
    id = Integer
    username = Unicode
    email = Unicode
    password = Unicode
    created_at = DateTime
    modified_at = DateTime


class UserService(ServiceBase):
    @rpc(Unicode, Unicode, Unicode, _returns=Integer)
    def add_user(ctx, username, password, email):
        new_user = PortalUser(
            username=username,
            password=password,
            email=email
        )
        try:
            session.add(new_user)
            session.commit()
            return 1
        except IntegrityError:
            session.rollback()
            return -1
        except Exception as e:
            session.rollback()
            return -2

    @rpc(Unicode, _returns=Integer)
    def delete_user(ctx, username):
        try:
            user_to_delete = session.query(PortalUser).filter_by(username=username).one_or_none()

            if user_to_delete:
                session.delete(user_to_delete)
                session.commit()
                return 1
            else:
                return 0
        except Exception as e:
            session.rollback()
            return -2
        
    @rpc(_returns=Array(UserModel))
    def list_users(ctx):
        try:
            users = session.query(PortalUser).all()
            print(f'users: {users}')
            user_models = [
                UserModel(
                    id=user.id,
                    username=user.username,
                    password=user.password,
                    email=user.email,
                    created_at = user.created_at,
                    modified_at = user.modified_at
                ) for user in users
            ]
            print(f'user_models: {user_models}')
            return user_models
        except Exception as e:
            traceback.print_exc()
            return []