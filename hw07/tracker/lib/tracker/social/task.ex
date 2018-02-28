defmodule Tracker.Social.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Social.Task


  schema "tasks" do
    field :assignee_id, :integer
    field :complete, :boolean, default: false
    field :date_assigned, :naive_datetime
    field :description, :string
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:assignee_id, :title, :description, :complete, :date_assigned])
    |> validate_required([:assignee_id, :title, :description, :complete, :date_assigned])
  end
end
