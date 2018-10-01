defmodule Mehub do

  def main(args) do
    args |> Mehub.Command.parse |> Mehub.Command.execute
  end
end
