Ferramenta muito útil para publicar o seu front na internet. Fácil e grátis.

Exemplo de aplicação: https://aceleradev2.surge.sh/

## Dicas básicas

```bash
# 1 - instala o surge ( apenas um vez )
npm install --global surge

# 2 - Faça o build estático da sua aplicação e entre na pasta

# 3 - Faça o deploy
surge
```

## Criando um Github Action

Use essa action como base: [action exemplo](https://github.com/acelera-dev-c4/todo-list-frontend/blob/main/.github/workflows/cd.yml)



```bash
# 1 - crie um token
surge token

# 2 - use essa colinha na action
surge dist/ aceleradev2.surge.sh --token ***
```




fonte: https://surge.sh/