defmodule Api.Accounts.UserResolver do
  alias Api.{Accounts.User, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(User)}
  end
end
