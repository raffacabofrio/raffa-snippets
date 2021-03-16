# Database to DTO

```csharp
// exemplo simples
var list = context.Bloggers
    .Select(x =>
    new ListBloggersDto
    {
        Name = x.Name,
        EmailAddress = x.EmailAddress,
        PostsCount = x.Posts.Count
    }).ToList(); 

// exemplo com automapper
var list = _context.Bloggers
    .ProjectTo<ListBloggersDto>(_mapper)     
    .ToList(); 

```