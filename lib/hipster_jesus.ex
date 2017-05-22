defmodule HipsterJesus do
  use HTTPoison.Base

  @spec preach(list) :: {:ok, String.t} | {:error, atom}
  def preach(opts \\ []) do
    query = build_query_string(opts)

    case get(query) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, reason}
    end
  end

  @spec process_url(binary) :: binary
  def process_url(url) do
    "http://hipsterjesus.com/api" <> url
  end

  @spec process_response_body(String.t) :: String.t
  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Map.get("text")
  end

  defp build_query_string(opts) do
    paragraphs = Keyword.get(opts, :paragraphs, 4)
    type = Keyword.get(opts, :type, "hipster-centric")
    html = Keyword.get(opts, :html, false)

    "?paras=#{paragraphs}&type=#{type}&html=#{html}"
  end
end
