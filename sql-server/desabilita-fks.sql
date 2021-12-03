-- desabilita todas as constraints
alter table my_table nocheck constraint all

-- não esqueça de habilitar de novo após fazer o que tem que fazer.
alter table my_table check constraint all