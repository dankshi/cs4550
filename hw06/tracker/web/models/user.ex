defmodule Tracker.User do
  use Tracker.Web, :model

  schema "users" do
    field :email, :string
    field :pass, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :pass])
    |> validate_required([:email, :pass])
    |> unique_constraint(:email)
  end
end
