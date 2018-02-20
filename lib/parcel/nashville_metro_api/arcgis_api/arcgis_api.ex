defmodule Parcel.NashvilleMetroApi.ArcgisApi do
  use HTTPoison.Base

  @base_url "http://maps.nashville.gov/arcgis/rest/services"
  @default_headers [{"Accept", "application/json"}]

  @doc false
  def process_url(url), do: @base_url <> url

  @doc false
  def process_request_headers(headers), do: @default_headers ++ headers

  @doc false
  def process_response_body(body), do: Poison.decode!(body)
end
