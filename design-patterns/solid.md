# SOLID

S - single responsability

O - open/closed

L - linkovsky substitution. Derived classes must be substitutable for their base classes.

I - inversion of control. dependencias no construtor. (ver service locator)

D - Dependency Inversion Principle. programar pra interfaces e não classes concretas.

# service locator
- responsável por injetar as dependencias. ele conhece as interfaces e as classes concretas.
- IoC Containers
- Startup.ConfigureServices
