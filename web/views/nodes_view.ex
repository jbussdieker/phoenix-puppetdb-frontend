defmodule PuppetdbFrontend.NodesView do
  use PuppetdbFrontend.View

  def nodes do
    PuppetDB.nodes.body
  end

  def nodes(name) do
    PuppetDB.nodes(name).body
  end
end
