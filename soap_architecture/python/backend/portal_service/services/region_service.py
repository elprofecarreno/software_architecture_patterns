from spyne import rpc, ServiceBase, Integer, Unicode, Array, ComplexModel, DateTime, Decimal
from sqlalchemy.exc import IntegrityError
from model.models import RegionState
from config.db import get_db_session
import traceback
import time
    
session = get_db_session()

class RegionStateModel(ComplexModel):
    id = Integer
    name = Unicode(50)
    latitude = Decimal(9, 6)
    longitude = Decimal(9, 6)
    created_at = DateTime
    modified_at = DateTime

class RegionService(ServiceBase):
    @rpc(Unicode, Unicode, Unicode, _returns=Integer)
    def add_region(ctx, name, latitude, longitude):
        new_user = RegionState(
            name=name,
            latitude=latitude,
            longitude=longitude,
            created_at=time.time
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
    def delete_region(ctx, name):
        try:
            user_to_delete = session.query(RegionState).filter_by(username=name).one_or_none()

            if user_to_delete:
                session.delete(user_to_delete)
                session.commit()
                return 1
            else:
                return 0
        except Exception as e:
            session.rollback()
            return -2
        
    @rpc(_returns=Array(RegionStateModel))
    def list_regions(ctx):
        try:
            regions = session.query(RegionState).all()
            print(f'regions: {regions}')
            regions_models = [
                RegionStateModel(
                    id=region.id,
                    name=region.name,
                    latitude=region.latitude,
                    longitude=region.longitude,
                    created_at=region.created_at,
                    modified_at=region.modified_at
                ) for region in regions
            ]
            print(f'regions_models: {regions_models}')
            return regions_models
        except Exception as e:
            traceback.print_exc()
            return []