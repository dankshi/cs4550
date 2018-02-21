defmodule Tracker.UserTest do
  use Tracker.ModelCase

  alias Tracker.User

  @valid_attrs %{email: "some email", pass: "some pass"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
