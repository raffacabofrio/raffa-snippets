# ESTRATÉGIAS DE MERGE

EXPLICIT MERGES ( NON FAST-FOWARD )

- cria um único commit na MASTER contendo tudo que foi feito na FEATURE.
- tem maior rastreabilidade e contexto.

IMPLICIT MERGE ( FAST-FOWARD )

- copia todos os commits da FEATURE e fazem parte do histórico da MASTER.
- perde histórico de onde nasceu o commit.

SQUASH ON MERGE

- junta tudo num único commit na branch feature, e manda esse comitão pra master.
- parece ser o pior de todos em termos de rastreabilidade.