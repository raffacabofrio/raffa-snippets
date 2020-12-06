LINQ - Language INtegrated Query

- lançado no .Net 3.5 & Visual Studio 2008.
- https://www.tutorialsteacher.com/linq/linq-tutorials
- extension methods para enumerables e queryables.
- 

# evolução
- c# 2.0 >> delegates
- c# 3.0 >> extension method, lambda expression, expression tree, anonymous type and query expression
- c# 3.5 >> linq
...
- c# 8 >> last version

# vantagens do linq
- familiar
- menos código
- código fácil de ler
- padronização para várias fontes de dados diferentes.
- 



# DESCRIÇÃO
- delagates         >> Delegates are used to pass methods as arguments to other methods.
- extension method. >> Cria um método para a classe, fora dela.
- lambda expression >> OrderBy(u => u.Name)
- expression tree   
 >> Criar e compilar funções em tempo de execução.
 >> Expression tree is an in-memory representation of a lambda expression.
 >> É o que faz possível o iqueryable. Interessante.
 >> 
 
- anonymous type    >> var v = new { Amount = 108, Message = "Hello" };
- query expression  >> from score in scores where score > 80 select score;

# LINQ Query Syntax
## query expression vs Method Syntax
- query expression  >> from score in scores where score > 80 select score;
- lambda expression >> socres.Where(score => score > 80).ToList();
 >> também conhecido como Method Extension Syntax or Fluent
 
- no Sharebook usamos Method Syntax.
- na processor tem algumas coisas com query expression. (gigantes até)
- ambos fazem a mesma coisa. e geram o mesmo código (Method Syntax). vai do gosto do freguês.
- eu prefiro Method Syntax.
- query expression tem BEM MENOS recursos.


# Linq Query Operations
- OrderBy, OrderByDescending, ThenBy, ThenByDescending
- GroupBy
- Agregate >> soma, avg, max, min em campos numéricos. Concatena em campos texto.
- Average, Count, Max, Sum >> praticamente tudo que eu lembro do sql.
- Except >> coleção 1 MENOS coleção 2
- Skip >> para paginação - traz registros a partir do registro 1000 por exemplo.
- Take >> para paginação - traz 10 registros por exemplo.

