# Api

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Seed (_dummy_) data:

```
mix run priv/repo/seeds.exs
```


Now you can visit http://localhost:4000/graphiql from your browser.

Run the following GraphQL Query:
```
{
  blogPosts {
    title,
    id
  }
}
```
e.g:
![image](https://user-images.githubusercontent.com/194400/26842137-afebee5e-4ae3-11e7-9fbc-97f805778a43.png)



See: https://seanclayton.me/post/phoenix-1-3-and-graphql-with-absinthe/
