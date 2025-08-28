# NVM - Node Version Manager

- [Instalador para windows](https://github.com/coreybutler/nvm-windows)

- Atenção.
  - Não funciona no powershell. Usar no CMD.
  - Precisa abrir em modo Administrador pro nvm funcionar.

```bash

# instalar o node 16
nvm install 16

# listar os nodes disponíveis
nvm list

# usar o node 16 ( talvez precise rodar como adm pra funcionar )
nvm use 16.15.1

```



# DICAS NODE 

```javascript

// abandonar a aplicação.
process.exit()	

// response simples
response.send('hello world')
response.end();

```

# EXPRESS - TIPOS DE MIDDLEWARES

*aplicativo*
- app.use(my_function) - será chamada em todas as requisições.
- app.get('/api', my_function) - responte apenas ao método GET nesse endpoint. 

*roteador*
- eu tava chamando de controller. Mas é o cara que separa os endpoints em recursos.
- exemplo posso ter um router apenas para o modulo usuário. E lá dentro vai ter todos os endpoints dele.
- var user_router = express.Router();
- user.get(); user.post(); etc...
- app.use(user_router)

*error handler*
- é parecido com o de aplicativo. mas tem um parâmetro a mais.
- não responde a rotas. apenas a erros estourados nos middlewares que executaram anteriormente.

*integrado*
- hoje em dia só tem um. Que é usado pra servir arquivos estáticos.
- app.use(express.static('files'));

*third party*
- muitos middlewares úteis criados por terceiros.
- cookieParser
- body-parser >> meu favorito.


# REQUIRE VS IMPORT
- require é o mais antigo, criado pelo node.
- import é ES6. (ES2015) Faz parte da linguagem agora.
- São praticamente iguais.




