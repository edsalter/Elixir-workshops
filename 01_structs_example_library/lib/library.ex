defmodule Library do
  alias Author
  alias Book
  @doc """
  Creates a new author.

  ## Parameters
  - `name` (String): The name of the author.
  - `birth_year` (integer): The birth year of the author.

  ## Returns
  - `%Author{}`: A new Author struct with the given name and birth year.

  ## Example
      iex> create_author("Jane Austen", 1775)
      %Author{name: "Jane Austen", birth_year: 1775}
  """
  @spec create_author(String.t(), integer()) :: Author.t()
  def create_author(name, birth_year) do
    %Author{name: name, birth_year: birth_year}
  end

  @doc """
  Creates a new book.

  ## Parameters
  - `title` (String): The title of the book.
  - `author` (%Author{}): The author of the book.
  - `published_year` (integer): The year the book was published.

  ## Returns
  - `%Book{}`: A new Book struct with the given title, author, and published year.

  ## Example
      iex> author = Library.create_author("Jane Austen", 1775)
      iex> Library.create_book("Pride and Prejudice", author, 1813)
      %Book{title: "Pride and Prejudice", author: %Author{name: "Jane Austen", birth_year: 1775}, published_year: 1813}
  """
  @spec create_book(String.t(), Author.t(), integer()) :: Book.t()
  def create_book(title, author, published_year) do
    %Book{title: title, author: author, published_year: published_year}
  end

  @doc """
  Updates the published year of a given book.

  ## Parameters
  - `book` (%Book{}): The book to be updated.
  - `published_year` (integer): The new published year of the book.

  ## Returns
  - `%Book{}`: The updated Book struct with the new published year.

  ## Example
      iex> book = create_book("Pride and Prejudice", create_author("Jane Austen", 1775), 1813)
      iex> update_published_year(book, 1815)
      %Book{title: "Pride and Prejudice", author: %Author{name: "Jane Austen", birth_year: 1775}, published_year: 1815}
  """
  @spec update_published_year(Book.t(), integer()) :: Book.t()
  def update_published_year(book, published_year) do
    %Book{book | published_year: published_year}
  end

  @doc """
  Lists all books with their details.

  ## Parameters
  - `books` (list of %Book{}): The list of books to be listed.

  ## Returns
  - (list of String): A list of strings describing each book's title, author, and published year.

  ## Example
      iex> books = [
      ...>   create_book("Pride and Prejudice", create_author("Jane Austen", 1775), 1813),
      ...>   create_book("Moby Dick", create_author("Herman Melville", 1819), 1851)
      ...> ]
      iex> list_books(books)
      ["Pride and Prejudice by Jane Austen, published in 1813", "Moby Dick by Herman Melville, published in 1851"]
  """
  @spec list_books([Book.t()]) :: [String.t()]
  def list_books(books) do
    require IEx; IEx.pry()
    Enum.map(books, fn book ->
      "#{book.title} by #{book.author.name}, published in #{book.published_year}"
    end)
  end
end
