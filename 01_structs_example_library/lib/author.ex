defmodule Author do
  @moduledoc """
  Documentation for `Author`.
  """

  @enforce_keys [:name, :birth_year]
  defstruct [:name, :birth_year]
end
