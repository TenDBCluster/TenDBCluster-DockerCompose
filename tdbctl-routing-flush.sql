--
# Source: tendbcluster-docker-compose/templates/tdbctl-routing-flush.sql.tpl

  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPT0','test-tendb-spt0',3306,'tendbcluster','tendbclusterpass','mysql');
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPT1','test-tendb-spt1',3306,'tendbcluster','tendbclusterpass','mysql');
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPT2','test-tendb-spt2',3306,'tendbcluster','tendbclusterpass','mysql');
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPT3','test-tendb-spt3',3306,'tendbcluster','tendbclusterpass','mysql');
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPIDER0','test-tspider-0',3306,'tendbcluster','tendbclusterpass','SPIDER');
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPIDER1','test-tspider-1',3306,'tendbcluster','tendbclusterpass','SPIDER');

  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('TDBCTL0','test-tdbctl-0',3306,'tendbcluster','tendbclusterpass','TDBCTL');

tdbctl flush routing;

