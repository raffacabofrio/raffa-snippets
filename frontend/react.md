# cria um novo app react
npx create-react-app react-styled-component

# CONCEITOS IMPORTANTES
- render() de um componente dispara o render() de todos seus filhos.
- virtual DOM
- plugin chrome: react developer tools
- class >> ClassName
- criar um projeto react

# REACT 16
- useState  >> nova forma de usar state que veio com react 16 em Setembro de 2017
- useEffect >> lançado junto com o useState. Substitui componentDidMount e demais.

# container vs component
- container tem state e orquestra.
- component é puro, e só tem props.

# PASSOS REACT NEW APP
1 - criar um layout. Figma por exemplo.
2 - desenhar estrutura. containers e components.
3 - criar uma versão estática.
4 - criar a versão dinâmica.


# mesclar dois componentes
const addressElement1 = <h1> ELEMENTO 01 </h1>
const addressElement2 = <h1> ELEMENTO 02 </h1>
return <div> { addressElement1 } { addressElement2 } </div>


# print SVG
Logohtml = <svg width="90" height="90">
	<image xlinkHref="/images/logo.svg" src="/images/logo.svg" width="90" height="90"/>
</svg>


# React fragment
	<>
		...seus componentes aqui
	</>


# children
subcomponentes que o pai incluiu.
<pai>
	<Componente>
		<h1>filho</h1>
	</Componente>
</pai>	

na definição de Componente
<div>
	...tudo que precisa
	{children} // <h1>filho</h1>
</div>



