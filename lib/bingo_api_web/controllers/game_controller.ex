defmodule BingoApiWeb.GameController do
  use BingoApiWeb, :controller

  def get_game(conn, _params) do
    json(conn, %{game: "aGame"})
  end

  def create_game(conn, _params) do
    json(conn, %{game: "aGame"})
  end
end
