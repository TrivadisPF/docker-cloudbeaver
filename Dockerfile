FROM  openjdk:11-stretch 
LABEL EMAIL="1141591465@qq.com"
LABEL AUTHOR="dalongrong"
ENV VERSION=1.0.3
WORKDIR /app
RUN wget https://github.com/dbeaver/cloudbeaver/releases/download/1.0.3/cloudbeaver-ce-1.0.3.zip -O cloudbeaver.zip
RUN unzip cloudbeaver.zip
COPY run-server.sh /app/cloudbeaver-ce-1.0.3/run-server.sh
EXPOSE 8978
WORKDIR /app/cloudbeaver-ce-1.0.3
CMD ["sh","run-server.sh"]