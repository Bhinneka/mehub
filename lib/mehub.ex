defmodule Mehub do

  def main(args) do
    args |> Mehub.Command.parse |> Mehub.Command.process_args
  end
end
