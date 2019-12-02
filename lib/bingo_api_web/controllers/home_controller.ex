defmodule BingoApiWeb.HomeController do
  use BingoApiWeb, :controller

  def index(conn, _params) do
    json(conn, %{hello: "world"})
  end

end
