
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # enforce parameters
  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  rescue_from ActionController::UnknownFormat, ActionView::MissingTemplate do
    # FIXME real 404 page
    render plain: '404 Not Found', status: :not_found, content_type: 'text/plain'
  end

end
