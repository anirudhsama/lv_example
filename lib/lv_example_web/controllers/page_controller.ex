defmodule LvExampleWeb.PageController do
  use LvExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
