from sqlalchemy import Column, BigInteger, Integer, String, TIMESTAMP, DECIMAL
from sqlalchemy.ext.declarative import declarative_base
import time

Base = declarative_base()

class PortalUser(Base):
    __tablename__ = 'portal_users'

    id = Column(BigInteger, primary_key=True, autoincrement=True)
    username = Column(String(100), nullable=False, unique=True)
    password = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    created_at = Column(TIMESTAMP, nullable=False, default=time.time)
    modified_at = Column(TIMESTAMP, nullable=True, onupdate=time.time)

class RegionState(Base):
    __tablename__ = 'regions_states'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(50), nullable=True)
    latitude = Column(DECIMAL(9, 6), nullable=True)
    longitude = Column(DECIMAL(9, 6), nullable=True)
    created_at = Column(TIMESTAMP, nullable=False, default=time.time)
    modified_at = Column(TIMESTAMP, nullable=True, onupdate=time.time)
    