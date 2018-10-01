defmodule Mehub.Command do

  alias Mehub.User

  def parse(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [username: :string, orgs: :boolean, repos: :boolean, followers: :boolean, help: :boolean],
      aliases: [u: :username, p: :password, o: :orgs, r: :repos, f: :followers, h: :help]
    )

    options
  end

  def execute([username: username]) do
    case User.get_user(username) |> process_body do
      {:ok, data} ->
        IO.puts "* Name : #{Map.get(data, "name")}"
        IO.puts "* Followers : #{Map.get(data, "followers")}"
        IO.puts "* Website : #{Map.get(data, "blog")}"
        IO.puts "* Bio : #{Map.get(data, "bio")}"
        IO.puts "* Location : #{Map.get(data, "location")}"
        IO.puts "* Company : #{Map.get(data, "company")}"
      :error ->
        IO.puts "User not found"
    end
  end

  def execute([username: username, orgs: true]) do
    case User.get_orgs(username) |> process_body do
      {:ok, data} ->
        IO.puts "#{username}'s Organization :"
        Enum.each(data, fn v -> IO.puts "* #{Map.get(v, "login")}" end)
      :error ->
        IO.puts "User not found"
    end
  end

  def execute([username: username, repos: true]) do
    case User.get_repos(username) |> process_body do
      {:ok, data} ->
        IO.puts "#{username}'s Repositories :"
        Enum.each(data, fn v -> IO.puts "* #{Map.get(v, "name")}" end)
      :error ->
        IO.puts "User not found"
    end
  end

  def execute([username: username, followers: true]) do
    case User.get_followers(username) |> process_body do
      {:ok, data} ->
        IO.puts "#{username}'s Followers :"
        Enum.each(data, fn v -> IO.puts "* #{Map.get(v, "login")}" end)
      :error ->
        IO.puts "User not found"
    end
  end

  def execute([help: true]), do: print_help()

  def execute(_), do: print_help()

  defp process_body({:ok, contents}), do: Map.fetch(contents, :body)

  defp process_body({:error, reason}), do: reason

  defp print_help do
    IO.puts "Usage :"
    IO.puts "example: ./mehub -u wuriyanto48"
    IO.puts "* -u --username show Github User detail"
    IO.puts "* -u or --username --orgs show Github User organizations"
    IO.puts "* -u or --username --repos show Github User repositories"
    IO.puts "* -u or --username --followers show Github User repositories"
    IO.puts "* -h --help for show help"
  end
end
