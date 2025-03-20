defmodule Book do
  @moduledoc """
  Documentation for `Book`.
  """

  @enforce_keys [:title, :author, :published_year]
  defstruct [:title, :author, :published_year]
end
