# unidades de medida:
- width: 100vh     >> pra 100% da tela
- font-size: 2rem  >> 2x maior que a fonte padrão desse site.
- grid-template-columns: 1fr 1fr; >> evita o scroll overflow ao contabilizar os espaçamentos.
	
# alinhar no centro
display: flex;
align-itens: center;
justify-content: center;

# grid system - exemplo simples
display: grid;
grid-template-columns: 1fr 1fr;
grid-column-gap: 10px >> espaçamento entre os elementos.

# gerador de box shadow
https://www.cssmatic.com/box-shadow

# css variables - sintaxe estranha.
```css
:root {
	--my_var: #fff
}

#my_div {
	background-color: var(--my_var)
}
```