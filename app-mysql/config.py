class Config:
    SECRET_KEY = 'B!1w8NAt1T^%kvhUI*S^'

class DevelopmentConfig(Config):
    DEBUG = True
    MYSQL_HOST = '192.168.122.158'
    MYSQL_USER = 'remoto1'
    MYSQL_PASSWORD = 'remoto'
    MYSQL_DB = 'prueba'

config = {
    'development': DevelopmentConfig
}
