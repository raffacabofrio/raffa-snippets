# documentação oficial
https://styled-components.com/

a sintaxe eh bom bom e velho CSS.
- text-transform por exemplo
- nunca gostei daquela sintaxe js.

em tempo de execução uma classe de nome único eh criada.

# tem acesso a variáveis globais do css

	:root {
	  --primaryColor: blue;
	}

	color: var(--primaryColor);


# dá pra colocar o hover junto da classe.

	const myDiv = styled.div`
		background: red;
		transition: all 2s easy-in-out;
		&:hover {
			background: black;
		}
	`
	
# dá pra extender componentes que já existem
const myDivExtended = styled(myDiv)``

# atributos do html ao invés de css
const myInput = styled.input.attrs()

# media queries
const myDiv = styled.div`
	...
	@media (min-width: 500px){
		...
	}
`

# inner element style
const myDiv = styled.div`
	...
	img{
		...
	}
`