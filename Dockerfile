FROM 5824600/mysql:5.7

WORKDIR $MYSQL_HOME

COPY mysql.initdb.d .