from atv_pasta_secundaria import app
from flask import Flask, render_template, url_for, request, flash, redirect
from atv_pasta_secundaria.models import Usuarios

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/tabela')
def exibir_tabela_usuarios():
    usuarios = Usuarios.query.all()
    return render_template('tabelaUsuarios.html', usuarios=usuarios)

