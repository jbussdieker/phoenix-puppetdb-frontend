defmodule PuppetDB do
  use HTTPotion.Base

  def process_url(url) do
    "http://localhost:8080/v3/" <> url
  end

  def process_response_body(body) do
    {:ok, doc} = JSON.decode(body)
    doc
  end

  def nodes do
    get("nodes", [timeout: 10000])
  end

  def nodes(id) do
    get("nodes/" <> id, [timeout: 10000])
  end

  def facts do
    get("facts", [timeout: 10000])
  end

  def facts(node) do
    get("nodes/" <> node <> "/facts", [timeout: 10000])
  end
end
