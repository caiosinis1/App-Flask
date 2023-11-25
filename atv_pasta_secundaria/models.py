from atv_pasta_secundaria import crm

class Usuarios(crm.Model):
    id_cliente = crm.Column(crm.Integer, primary_key=True, autoincrement=True)
    nome = crm.Column(crm.String(255))
    sobrenome = crm.Column(crm.String(255))
    idade = crm.Column(crm.Integer)
    telefone = crm.Column(crm.String(255))
    email = crm.Column(crm.String(255))

