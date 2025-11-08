# Dockerfile

# 1. Comece com uma imagem base oficial do Python
# (usar a '-slim' economiza muito espaço)
FROM python:3.10-slim

# 2. Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# 3. Copie o arquivo de dependências PRIMEIRO
# (Isso aproveita o cache do Docker)
COPY requirements.txt .

# 4. Instale as dependências
RUN pip install -r requirements.txt

# 5. Copie o resto do código da sua aplicação
COPY . .

# 6. Exponha a porta que o seu app (Flask) usa
EXPOSE 5000

# 7. Defina o comando para rodar o seu app
CMD ["python", "api_main.py"]