defmodule Sigils do
  @moduledoc """
  Documentation for Sigils.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sigils.hello
      :world

  """
  def hello do
    :world
  end



  @doc ~s(
    iex> Sigils.hello
    :world
  )
  def s_sigil do
    ~s(Useful for string that contain both "double quotes" and 'Single Quotes')
    # ~s{what}
  end
end
