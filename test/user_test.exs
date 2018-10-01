defmodule Mehub.UserTest do
  use ExUnit.Case
  alias Mehub.User

  test "Should return valid user info data" do
    assert {:ok, response} = User.get_user("wuriyanto48")

    assert {:ok, body} = Map.fetch(response, :body)

    assert %{"name" => "wuriyanto musobar"} = body

    assert %{"html_url" => "https://github.com/wuriyanto48"} = body
  end

  test "Should return invalid user info data when user not found" do
    assert {:ok, response} = User.get_user("wury4")

    assert {:ok, body} = Map.fetch(response, :body)

    assert %{"message" => "Not Found"} = body

    assert %{"documentation_url" => "https://developer.github.com/v3/users/#get-a-single-user",} = body
  end

  test "Should return valid user repos data" do
    assert {:ok, response} = User.get_repos("wuriyanto48")

    assert {:ok, body} = Map.fetch(response, :body)

    assert length(body) == 2
  end

  test "Should return valid user orgs data" do
    assert {:ok, response} = User.get_orgs("wuriyanto48")

    assert {:ok, body} = Map.fetch(response, :body)

    assert length(body) == 2
  end
end
