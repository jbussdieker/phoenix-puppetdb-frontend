defmodule PuppetdbFrontend.NodesView do
  use PuppetdbFrontend.View

  def nodes do
    PuppetDB.nodes.body
  end
end
