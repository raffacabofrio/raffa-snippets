# COMPONENTE REACT DE BOA QUALIDADE
- bem estruturado
- fácil manutenção
- readable
- Confiável

# CODE COVERAGE
- 70% ideal. Mais que isso é desperdício de esforço.
- npm test -- --covegare
- npx jest --coverage

# ENZYME
- ajuda a renderizar componentes react em tempo de teste.
- tem intenção de ser fácil de usar. imitando jQuery.
- pra ser usado com JEST ou outra lib de testes unitários.
- reactDOM >> enzime.shallow
- oficialmente não funciona com hooks. :-(
- alternativas: react-test-renderer e jsdom.
- snnippets: https://devhints.io/enzyme 

# mount vs shallow
- mount: renders a component to its extreme leaf nodes 
- shallow: renders just the component and not its children. +performance.


# CODE SNIPPETS - TESTES ÚTEIS

```javascript
// verifica se um componente tem dois botões.
it('renders two buttons', () => {
    const buttons = mountedStoreLocator.find('Button');
    expect(buttons.length).toBe(2);
});

// verifica se um componente tem uma propriedade
it('displays the location', ()=> {
    const locName = mountedButton.find('.location-button');
    expect(locName.text()).toEqual('Location1');
});

// verifica o clique de botão
it('call a function passed to it when clicked', ()=>{
   const mockCallBack = jest.fn();
   const mountedButtonWithCallback = shallow(<Button handleClick={mockCallBack} />);
   mountedButtonWithCallback.find('button').simulate('click');
   expect(mockCallBack.mock.calls.length).toEqual(1);
});

// mockando o axios
const axiosMock = jest.genMockFromModule('axios');
expect(axios.get).toHaveBeenCalled();
expect(axios.get).toHaveBeenCalledWith('http://localhost:3000/data/shops.json');

// teste de snapshot
const tree = renderer.create(<StoreLocator />).toJSON();
expect(tree).toMatchSnapshot();
```