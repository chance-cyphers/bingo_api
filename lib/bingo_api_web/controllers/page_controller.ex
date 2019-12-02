defmodule BingoApiWeb.PageController do
  use BingoApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
