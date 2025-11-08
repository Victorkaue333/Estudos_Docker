# 🐳 Estudos Docker - Flask API

Projeto de estudos para aprender Docker através de uma aplicação Flask simples.

## 📋 Descrição

Esta é uma aplicação web básica em Flask que demonstra os conceitos fundamentais do Docker. A aplicação serve uma mensagem de boas-vindas quando acessada.

## 🚀 Tecnologias

- **Python 3.10**
- **Flask 3.0.0**
- **Docker**

## 📁 Estrutura do Projeto

```
Estudos_Docker/
├── api_main.py          # Aplicação Flask principal
├── Dockerfile           # Instruções para construir a imagem Docker
├── requirements.txt     # Dependências do Python
└── README.md           # Este arquivo
```

## 🔧 Como Executar

### Opção 1: Executar com Docker (Recomendado)

1. **Construir a imagem Docker:**
   ```bash
   docker build -t flask-app .
   ```

2. **Executar o container:**
   ```bash
   docker run -p 5000:5000 flask-app
   ```

3. **Acessar a aplicação:**
   - Abra seu navegador em: http://localhost:5000

### Opção 2: Executar localmente (sem Docker)

1. **Instalar dependências:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Executar a aplicação:**
   ```bash
   python api_main.py
   ```

3. **Acessar a aplicação:**
   - Abra seu navegador em: http://localhost:5000

## 📚 O que você aprende com este projeto

### Conceitos de Docker:

1. **Imagem Base**: Uso de `python:3.10-slim` para reduzir o tamanho da imagem
2. **WORKDIR**: Definição do diretório de trabalho no container
3. **Cache de Camadas**: Cópia do `requirements.txt` antes do código para otimizar builds
4. **EXPOSE**: Documentação da porta utilizada pela aplicação
5. **CMD**: Comando de inicialização do container

### Configurações Importantes:

- **`host='0.0.0.0'`**: Permite que o Flask aceite conexões de fora do container
- **`port=5000`**: Porta padrão do Flask

## 🎯 Endpoints

- **GET /** - Retorna mensagem de boas-vindas

## 📝 Comandos Docker Úteis

```bash
# Listar imagens
docker images

# Listar containers em execução
docker ps

# Parar um container
docker stop <container_id>

# Remover um container
docker rm <container_id>

# Remover uma imagem
docker rmi flask-app

# Ver logs do container
docker logs <container_id>

# Executar container em modo detached (segundo plano)
docker run -d -p 5000:5000 flask-app
```

## 🐛 Troubleshooting

**Problema**: Porta 5000 já está em uso
- **Solução**: Use outra porta externa: `docker run -p 8080:5000 flask-app` e acesse http://localhost:8080

**Problema**: Mudanças no código não aparecem
- **Solução**: Reconstrua a imagem: `docker build -t flask-app .`

## 📖 Próximos Passos

- [ ] Adicionar mais rotas à API
- [ ] Implementar conexão com banco de dados
- [ ] Usar Docker Compose para múltiplos serviços
- [ ] Adicionar testes automatizados
- [ ] Implementar CI/CD

## 👨‍💻 Autor

Victor Alves

## 📄 Licença

Este projeto é para fins educacionais.
