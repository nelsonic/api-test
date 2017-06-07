defmodule Api.Blog.PostResolver do
  alias Api.{Blog.Post, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end

  # def create(args, _info) do
  #   %Post{}
  #   |> Post.changeset(args)
  #   |> Repo.insert
  # end
end
