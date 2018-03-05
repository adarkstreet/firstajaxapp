class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_error(model)
    render json: { errors: model.errors.full_message.join(',') }, status: 422
  end
end
