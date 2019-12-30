defmodule BingoApiWeb.Router do
  use BingoApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BingoApiWeb do
    pipe_through :api

    get "/", HomeController, :index

    get "/game", GameController, :get_game
    post "/game", GameController, :create_game
  end
end
