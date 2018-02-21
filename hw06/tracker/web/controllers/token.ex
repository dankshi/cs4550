# Attribute Tensor Programming Tutorial 3
defmodule Tracker.Token do
	use Tracker.Web, :controller

	def unauthenticated(conn, _params) do
		conn
		|> put_flash(:error, "Please sign in!")
		|> redirect(to: session_path(conn, :new))
	end

	def unauthorized(conn, _params) do
	    conn
	    |> put_flash(:error, "Please sign in!")
	    |> redirect(to: session_path(conn, :new))
  	end
end
