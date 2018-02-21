defmodule Tracker.Auth do
	import Plug.Conn

	defp login(conn, user) do
		conn
		|> Guardian.Plug.sign_in(user, :access)
	end

	def login_with(conn, email, pass, opts) do
		repo = Keyword.fetch!(opts, :repo)
		user = repo.get_by(Tracker.User, email: email)

		cond do
			user && String.equivalent?(pass, user.pass) ->
				{:ok, login(conn, user)}
			user ->
				{:error, :unauthorized, conn}
			true ->
				{:error, :not_found, conn}
		end
	end

end
