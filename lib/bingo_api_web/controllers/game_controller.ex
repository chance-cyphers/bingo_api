defmodule BingoApiWeb.GameController do
  use BingoApiWeb, :controller
  import Ecto.Query

  alias BingoApi.{Repo, Game}

  def get_game(conn, _params) do
    json(conn, %{games: Repo.all(from g in Game, select: %{"id" => g.id, "title" => g.title})})
  end

  def create_game(conn, %{"title" => title}) do
    {:ok, created_game} = Repo.insert(%Game{title: title})

    json(conn, %{id: created_game.id, title: created_game.title})
  end
end
