# stash
Stash serve para salvar/ reaplicar todo o trabalho mantendo a branch limpa.
Útil para quando precisa mudar de branch ou fazer algum merge.

```bash
# salva todo trabalho
git stash

git stash list

# aplica o último stash e REMOVE o mesmo
git stash pop

# aplica o último stash e PRESERVA o mesmo
git stash apply

#limpa stashes indesejados
git stash clear
```