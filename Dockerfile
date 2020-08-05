FROM  openjdk:11-stretch 
LABEL EMAIL="1141591465@qq.com"
LABEL AUTHOR="dalongrong"
ENV VERSION=1.1.0
WORKDIR /app
RUN wget https://github.com/dbeaver/cloudbeaver/releases/download/1.1.0/cloudbeaver-ce-1.1.0.zip -O cloudbeaver.zip
RUN unzip cloudbeaver.zip
COPY run-server.sh /app/cloudbeaver-ce-1.1.0/run-server.sh
EXPOSE 8978
WORKDIR /app/cloudbeaver-ce-1.1.0
CMD ["sh","run-server.sh"]