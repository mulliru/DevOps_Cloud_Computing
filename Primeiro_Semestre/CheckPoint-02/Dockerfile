# Usar a imagem base Python 3.9
FROM python:3.9

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo requirements.txt para o container
COPY requirements.txt .

# Instala as dependências do projeto
RUN pip install -r requirements.txt

# Copia todos os arquivos da aplicação para o container
COPY . .

# Define o comando padrão para rodar a aplicação
CMD ["python", "app.py"]
