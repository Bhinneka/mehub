defmodule Mehub.User do
  import Mehub.GithubClient, only: [make_request: 2]

  def get_user(username) do
    make_request(:get, "/users/#{username}")
  end

  def get_repos(username) do
    make_request(:get, "/users/#{username}/repos")
  end

  def get_orgs(username) do
    make_request(:get, "/users/#{username}/orgs")
  end

  def get_followers(username) do
    make_request(:get, "/users/#{username}/followers")
  end
end
