FROM python:3.11
#Usam a imagem python:3.11 como base para o container.
COPY . /app
#Copiam os arquivos do projeto para o container.
WORKDIR /app
#Definem o diretório de trabalho do container como o diretório do projeto.
RUN pip install -r requirements.txt
#Instalam as dependências do projeto usando o pip3.
EXPOSE 8000
#Expoem a porta 8000 do container.
CMD python manage.py runserver 0.0.0.0:8000
#Iniciam o servidor web do Django na porta 8000.

