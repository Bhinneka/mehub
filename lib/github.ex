defmodule Mehub.GithubClient do
  use HTTPoison.Base

  def headers do
    %{
      "Content-type" => "application/json",
      "Accept" => " application/vnd.github.v3+json"
    }
  end

  def make_request(:get, url) do
    get(url, headers())
  end

  # Example of a POST
  # def make_request(:post, url, body) do
  #   post!(url, body, headers)
  # end

  # HTTPosion Hooks

  def process_url("/" <> path), do: process_url(path)
  def process_url(path), do: "https://api.github.com/" <> path

  def process_response_body(body) do
    body |> Poison.decode!
  end

end
