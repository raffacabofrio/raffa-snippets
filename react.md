# cria um novo app react
npx create-react-app react-styled-component

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



