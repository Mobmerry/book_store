class ApplicationController < ActionController::API
  include ActionController::Serialization


  rescue_from ActiveRecord::RecordNotFound do
    render json: { error: 'record not found with that id'}
  end

  rescue_from ActiveRecord::RecordInvalid do |ex|
    render json: { error: ex.message }
  end
end
