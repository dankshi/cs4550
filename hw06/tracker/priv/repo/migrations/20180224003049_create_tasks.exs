defmodule Tracker.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :assignee_id, :integer
      add :title, :string
      add :description, :string
      add :complete, :boolean, default: false, null: false
      add :date_assigned, :naive_datetime
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:tasks, [:user_id])
  end
end
