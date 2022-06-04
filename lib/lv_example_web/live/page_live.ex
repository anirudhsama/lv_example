defmodule LvExampleWeb.PageLive do
  use LvExampleWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
      <button phx-click="click">Update Name</button>
      <p>Name: <%= @name %></p>
      <p>Date: <span phx-hook="LocalDate" id="date"><%= @date %></span></p>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(name: "Foo")
     |> assign(date: DateTime.utc_now())}
  end

  @impl true
  def handle_event("click", _params, socket) do
    {:noreply, assign(socket, :name, "Updated Foo")}
  end
end
