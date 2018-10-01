defmodule Mehub.User do

  @github_client Application.get_env(:mehub, :github_client)

  def get_user(username) do
    @github_client.make_request(:get, "/users/#{username}")
  end

  def get_repos(username) do
    @github_client.make_request(:get, "/users/#{username}/repos")
  end

  def get_orgs(username) do
    @github_client.make_request(:get, "/users/#{username}/orgs")
  end

  def get_followers(username) do
    @github_client.make_request(:get, "/users/#{username}/followers")
  end
end
