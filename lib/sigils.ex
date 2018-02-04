defmodule Sigils do
  
  @vsn 1 # this affects code reloading in erlang vm
         # will probably never be used in dockerized apps

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

  @doc """
    iex> import Sigils
    iex>c_sigil()
    'hiiii'
  """
  def c_sigil do
    ~c(hiiii)
  end
end
