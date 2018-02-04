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

  @doc "

  "
  def w_sigil do
    ~w(foo bar bat)
  end

  # playing around with this
  # https://stackoverflow.com/questions/42014121/elixir-heredocs-closing-triple-quotes-behavior
  @doc """
    iex> import Sigils
    iex> multiline_quotes_1()
    "hi\\nthere\\n  indented\\nwhat\\n"
  """
  def multiline_quotes_1 do
    var = """
    hi
    there
      indented
    what
    """
    var
  end

  @doc """
    iex> import Sigils
    iex> multiline_quotes_2()
    "hi\\nthere\\nindented\\nwhat\\n"
  """
  def multiline_quotes_2 do
    var = """
    hi
    there
      indented
    what
      """
    var
  end

  @doc """
    iex> import Sigils
    iex> multiline_quotes_3()
    "  hi\\n  there\\n    indented\\n  what\\n"
  """
  def multiline_quotes_3 do
    var = """
    hi
    there
      indented
    what
  """
    var
  end
end
