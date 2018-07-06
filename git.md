# -------------------------------------------
# BRANCH

# cria uma branch
git checkout -b [name_of_your_new_branch]

# remove uma branch local
git branch -d krypto

#lista os branches
git branch -a

# mescla branches
git merge nome-outra-branch


# ---------------------------------------------
# ATUALIZANDO MEU FORK NO GITHUB

# add o original como um novo remoto. ( isso cria a branch upstream/master)
git remote add upstream https://github.com/SharebookBR/frontend.git

# puxa os commits do original.
git pull upstream master

# sobe os commits para o seu fork
git push 

# pull pelo upstream
git pull upstream master



# ---------------------------------------------
# STASH

git stash 

git checkout -b crypto #muda de branch 

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
git tag -d v1.3.2                      # local
git push --delete origin push v1.3.2   # remoto ( múliplos tags )


# -----------------------------------------------
# DIVERSOS

# voltar a branch para um commit antigo
git reset --hard 0d1d7fc32
git push origin HEAD --force

# renomear um arquivo sem perder o histórico
git mv src/crypto src/sulAmerica

# remover o remote
git remote remove origin

#desabilitar pre-commit
renomear pasta "feingoldtech-dashboard\.git\hooks" >> "hooks.disabled"

#undo de apenas um commit
git revert 20acdf5a

#mesclar dois commits
git rebase --interactive HEAD~2

$ git log --pretty=oneline
18fd73d3ce748f2a58d1b566c03dd9dafe0b6b4f b and c
df239176e1a2ffac927d8b496ea00d5488481db5 a

#alterar nome que aparece nas mensagens de commit
git config --global user.name "Raffaello Damgaard"

# reverter apenas um arquivo
git checkout d8c5cba5c07dca87d18a3ecd63063a665c7894a9 -- functions\getRATGroup.R

# visualizar arvore de branches
gitk


