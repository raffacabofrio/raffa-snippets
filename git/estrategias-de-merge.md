# ESTRATÉGIAS DE MERGE

EXPLICIT MERGES ( NON FAST-FOWARD )

- cria um único commit na MASTER contendo tudo que foi feito na FEATURE.
- tem maior rastreabilidade e contexto.
- bom para: usar ao aprovar PRs.

IMPLICIT MERGE ( FAST-FOWARD )

- copia todos os commits da FEATURE e fazem parte do histórico da MASTER.
- perde histórico de onde nasceu o commit.
- bom para: atualizar sua branch mantendo histórico.

SQUASH ON MERGE

- junta tudo num único commit na branch feature, e manda esse comitão pra master.
- parece ser o pior de todos em termos de rastreabilidade.
- bom para: quando um único commit seja mais significativo. (muito raro)
