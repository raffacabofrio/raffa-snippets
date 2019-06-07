# -------------------------------------------
# BRANCH

# cria uma branch
git checkout -b [name_of_your_new_branch]

# remove uma branch
git branch -d nome-da-branch             #local
git push --delete origin nome-da-branch  #remoto

#lista os branches
git branch    #local
git branch -r #remoto

# mescla branches
git merge nome-outra-branch

# checkout para uma branch remota que ainda não existe local.
git checkout --track origin/develop


# ---------------------------------------------
# TAG

# cria tag
git tag v1.2.2

# sobe a tag
git push origin --tags

# lista tags
git tag                    # local
git ls-remote --tags       # remoto

# remove uma tag
git tag -d tag_pra_deletar                           # local
git push --delete origin refs/tags/tag_pra_deletar   # remoto ( múliplos tags )


# ---------------------------------------------
# STASH

# salva todo trabalho 
git stash 

git stash list

git stash pop

#limpa stashes indesejados
git stash clear


# ---------------------------------------------
# ATUALIZANDO MEU FORK NO GITHUB

# add o original como um novo remoto. ( isso cria a branch upstream/master)
git remote add upstream https://github.com/SharebookBR/sharebook-frontend.git

# puxa os commits do original.
git pull upstream master

# sobe os commits para o seu fork
git push 



# -----------------------------------------------
# TRAZER APENAS 3 COMMITS DE OUTRA BRANCH

git cherry-pick 5c4ed65
git cherry-pick faa1bf9
git cherry-pick 00fb29e


# -----------------------------------------------
# DEU RUIM. COMO DESFAZER?

# undo de apenas um commit
git revert 20acdf5a

# reverter apenas um arquivo
git checkout d8c5cba5c07dca87d18a3ecd63063a665c7894a9 -- functions\getRATGroup.R

# faz a branch voltar no tempo *** CUIDADO!!! ***
git reset --hard f414f31

# daí força a branch remota a voltar no tempo também.
git push --force


# -----------------------------------------------
# REMOVER ARQUIVO DE TODO HISTÓRICO
# projeto open: https://rtyley.github.io/bfg-repo-cleaner/

# 1 - clone de um tipo especial que permite mecher no histórico
git clone --mirror https://sharecarebr-raffaelloneves@bitbucket.org/sharecarebrteam/sharecarebr-nodejs-dashboard-jobs.git

# 2 - roda o projeto
bgf='/c/_REPOSITORIOS/bfg-1.13.0.jar'
java -jar $bgf --delete-files env.js sharecarebr-nodejs-dashboard-jobs.git

# 3 - push
git push


# -----------------------------------------------
# LIMPAR HISTÓRICO. MESCLAR COMMITS.
# fonte: https://www.internalpointers.com/post/squash-commits-into-one-git

# escolha o commit mais velho que NÂO vai ser mesclado.
git rebase --interactive 4c5087f

# coloque 'pick' no commit desejado e 'squash' nos demais.


# -----------------------------------------------
# PRUNE - remove branches locais que já foram removidas no remoto.

# remove automático ** CUIDADO!! **
git config remote.origin.prune true

# força remover
git fetch -p




# -----------------------------------------------
# DIVERSOS

# renomear um arquivo sem perder o histórico
git mv src/crypto src/sulAmerica

# remover o remote
git remote remove origin

#desabilitar pre-commit
renomear pasta "feingoldtech-dashboard\.git\hooks" >> "hooks.disabled"

#mesclar dois commits
git rebase --interactive HEAD~2

$ git log --pretty=oneline
18fd73d3ce748f2a58d1b566c03dd9dafe0b6b4f b and c
df239176e1a2ffac927d8b496ea00d5488481db5 a

#alterar nome que aparece nas mensagens de commit
git config --global user.name "Raffaello Damgaard"
git config --global user.email "raffacabofrio@gmail.com"

#salva senha pro git não ficar perguntando toda hora
git push --set-upstream origin teste

# visualizar arvore de branches
gitk


# AMEND - adicionar coisas ao commit anterior
git commit -m 'initial commit'
git add forgotten_file
git commit --amend

--no-edit # não muda a msg commit


# -----------------------------------------------
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
 
 






