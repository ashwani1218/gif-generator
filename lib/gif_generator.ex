defmodule GifGenerator do
  @moduledoc """
  Documentation for GifGenerator.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GifGenerator.hello()
      :world

  """
  def hello do
    :world
  end

  def generate(theme) do
    with {:ok, url} <- image_url(theme),
         {:ok, binary} <- download_image(url) do
      {:ok, binary}
    end
  end
   
  defp image_url(theme) do
    %{"data"=> %{"image_url" => image_url}} =
      GiphyEx.Gifs.random(theme)

      {:ok, image_url}
  end


  defp download_image(url) do
    {:ok, %HTTPoison.Response{body: binary}} = 
      HTTPoison.get(url)

    {:ok, binary}
  end
end





























