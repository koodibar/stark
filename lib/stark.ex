defmodule Stark do
  @moduledoc """
  Documentation for Stark.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Stark.hello()
      :world

  """
  def hello do
    :world
  end

  def parse_markdown do
    case File.read("posts/simple.md") do
      {:ok, body} ->
        {:ok, html_doc, _} = Earmark.as_html(body)
        IO.puts(html_doc)
        write_html(html_doc)
      {:error, reason} ->
        IO.puts(reason)
    end
  end

  def write_html(body) do
    File.write("outputs/simple.html", body)
  end
end
