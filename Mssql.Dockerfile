# FROM mcr.microsoft.com/mssql/server:2017-latest

# ENV ACCEPT_EULA=Y
# ENV SA_PASSWORD=Batoan01326754@

# RUN mkdir -p –m777 /home/backup/ /home/data/ /home/log/
# COPY ./Bk/testDB.bak /home/backup/
# COPY ./entrypoint.sh .
# COPY ./db-init.sql .

# RUN chmod +x /entrypoint.sh
# RUN chmod +x /db-init.sql

# CMD /bin/bash ./entrypoint.sh

FROM mcr.microsoft.com/mssql/server:2017-latest

COPY . /

RUN mkdir -p –m777 /home/backup/ /home/data/ /home/log/
COPY ./Bk/testDB.bak /home/backup/

RUN chmod +x /db-init.sh
CMD /bin/bash ./entrypoint.sh

