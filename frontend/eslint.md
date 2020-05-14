```bash
# instala o eslint
npm install eslint --save-dev

# cria o arquivo de configuração
# nesse passo vc vai escolher seu code style favorito, como o standard por exemplo.
npx eslint --init

# corrige todos os arquivos
npx eslint src --fix

# ATENÇÃO! Precisa do plugin vs code.
busque por eslint na aba de plugins.

```

# configura o vs code pra formatar ao salvar.
```json
{
    "editor.codeActionsOnSave": {
        "source.fixAll.eslint": true
    }
}
```
