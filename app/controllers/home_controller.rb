# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @filterrific = init_filterrific

    @vehicles = @filterrific.find.page(params[:page]).includes(:owner).decorate
    respond_to do |format|
      format.html
      format.js
    end
  end

  def upload_file
    if upload_params[:file].present?
      Commands::FileParser.call(upload_params[:file].read)
      @vehicles = Vehicle.includes(:owner).decorate
      respond_to do |format|
        format.html { redirect_to root_path, notice: "File uploaded successfully" }
        format.js
      end
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  private def upload_params
    params.permit(:file)
  end

  private def init_filterrific
    initialize_filterrific(
      Vehicle,
      params[:filterrific],
      select_options: { sorted_by: Vehicle.options_for_sorted_by },
      persistence_id: "shared_key",
      default_filter_params: {},
      available_filters: [:sorted_by],
      ssanitize_params: true
    ) || return
  end
end
