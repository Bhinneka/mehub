defmodule Mehub.User do

  @github_client Application.get_env(:mehub, :github_client)

  @spec get_user(String.t) :: {:ok, HTTPoison.Response.t()}
  def get_user(username), do: @github_client.make_request(:get, "/users/#{username}")

  @spec get_repos(String.t) :: {:ok, HTTPoison.Response.t()}
  def get_repos(username), do: @github_client.make_request(:get, "/users/#{username}/repos")

  @spec get_orgs(String.t) :: {:ok, HTTPoison.Response.t()}
  def get_orgs(username), do: @github_client.make_request(:get, "/users/#{username}/orgs")

  @spec get_followers(String.t) :: {:ok, HTTPoison.Response.t()}
  def get_followers(username), do: @github_client.make_request(:get, "/users/#{username}/followers")
end
