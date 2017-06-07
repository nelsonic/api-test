defmodule Api.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Api.Blog.Post


  schema "blog_posts" do
    field :body, :string
    field :title, :string
    # field :accounts_users_id, :id
    belongs_to :accounts_users, Api.Accounts.User, foreign_key: :accounts_users_id

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
