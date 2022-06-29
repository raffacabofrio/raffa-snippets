-- BOM PARA APAGAR GRANDES VOLUMES DE DADOS, SEM FUDER O SERVIDOR.

while exists (select top 1 1 from MY_TABLE where CreationDate <= '2021-11-29 17:36:56.050')
begin

	delete top (10000) MY_TABLE where CreationDate <= '2021-11-29 17:36:56.050'
	checkpoint

end