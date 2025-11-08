# api_main.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Olá, Docker! Esta é a minha primeira aplicação em Flask."

# O host='0.0.0.0' é crucial para rodar no Docker.
# Isso faz o servidor aceitar conexões de fora do contêiner.
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)