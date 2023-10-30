class Config:
    SECRET_KEY = 'B!1w8NAt1T^%kvhUI*S^'

class DevelopmentConfig(Config):
    DEBUG = True
    MYSQL_HOST = 'localhost'
    MYSQL_USER = 'gonzalo'
    MYSQL_PASSWORD = 'gonzalo'
    MYSQL_DB = 'prueba'

config = {
    'development': DevelopmentConfig
}