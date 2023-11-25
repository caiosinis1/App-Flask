from flask import Flask
import os
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = '21aceda4d8254352b47a4b407cd54c7f'


if os.getenv('DATABASE_URL'):
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///crm.db'

else:
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/crm'

database = SQLAlchemy(app)

from atv_pasta_secundaria import routes
