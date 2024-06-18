class HomeController < ApplicationController
  def index
    @vehicles = Vehicle.includes(:owner).decorate
  end

  def upload_file
    if upload_params[:file].present?
      file_data = params[:file].read

      # Process the file (e.g., parse CSV, import data into the database)
      Commands::FileParser.call(file_data)
      @vehicles = Vehicle.includes(:owner).decorate
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'File uploaded successfully' }
        format.js # Renders create.js.erb
      end
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  private def upload_params
    params.permit(:file)
  end
end
