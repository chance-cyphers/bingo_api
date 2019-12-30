defmodule BingoApi.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "game" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
