defmodule Api.Web.Router do
  use Api.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Api.Web do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
    resources "/posts", PostController, except: [:new, :edit]
  end

  forward "/graph", Absinthe.Plug,
    schema: Api.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Api.Schema
end
