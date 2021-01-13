# Como mudar a mensagem do primeiro commit?
Comandos amend e rebase não atendem. Esse é o macete.

```bash
# checkout the root commit
git checkout xxx

# amend the commit
git commit --amend

# rebase all the other commits in master onto the amended root
git rebase --onto HEAD HEAD master
```
