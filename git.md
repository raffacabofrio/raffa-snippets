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


# ---------------------------------------------
# ATUALIZANDO MEU FORK NO GITHUB

# add o original como um novo remoto. ( isso cria a branch upstream/master)
git remote add upstream https://github.com/SharebookBR/sharebook-frontend.git

# puxa os commits do original.
git pull upstream master

# sobe os commits para o seu fork
git push 



# ---------------------------------------------
# STASH

# salva todo trabalho 
git stash 

git stash list

git stash pop

#limpa stashes indesejados
git stash clear


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
git tag -d v1.3.2                        # local
git push --delete origin v8.0.0 v1.3.2   # remoto ( múliplos tags )


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




