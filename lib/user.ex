defmodule Mehub.User do

  @github_client Application.get_env(:mehub, :github_client)

  def get_user(username), do: @github_client.make_request(:get, "/users/#{username}")

  def get_repos(username), do: @github_client.make_request(:get, "/users/#{username}/repos")

  def get_orgs(username), do: @github_client.make_request(:get, "/users/#{username}/orgs")

  def get_followers(username), do: @github_client.make_request(:get, "/users/#{username}/followers")
end
