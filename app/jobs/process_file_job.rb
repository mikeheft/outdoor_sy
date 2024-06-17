class ProcessFileJob < ApplicationJob
  queue_as :default

  def perform(file_data)
    Commands::FileParser.call(file_data)
    vehicles = Vehicle.includes(:owner)

    # Broadcast the update to the clients
    ActionCable.server.broadcast 'file_uploads_channel', { table_html: render_table(vehicles) }
  end

  private

  def render_table(vehicles)
    ApplicationController.renderer.render(partial: 'vehicles/table', locals: { vehicles: })
  end
end
