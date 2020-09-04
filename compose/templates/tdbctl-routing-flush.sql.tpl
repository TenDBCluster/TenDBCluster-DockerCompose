{{- $tendbSize := .Values.tendb.size | int }}
{{- $tspiderSize := .Values.tspider.size | int }}
{{- $clusterName := .Values.tendbClusterName }}
{{- $userOperator := .Values.userOperator.user }}
{{- $userOperatorPass := .Values.userOperator.password }}

{{- range until $tendbSize }}
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPT{{ . }}','{{ $clusterName }}-tendb-spt{{ . }}',3306,'{{ $userOperator }}','{{ $userOperatorPass }}','mysql');
{{- end }}

{{- range until $tspiderSize }}
  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('SPIDER{{ . }}','{{ $clusterName }}-tspider-{{ . }}',3306,'{{ $userOperator }}','{{ $userOperatorPass }}','SPIDER');
{{- end }}

  replace into mysql.servers(Server_name,Host,Port,Username,Password,Wrapper) values('TDBCTL0','{{ $clusterName }}-tdbctl-0',3306,'{{ $userOperator }}','{{ $userOperatorPass }}','TDBCTL');

tdbctl flush routing;
