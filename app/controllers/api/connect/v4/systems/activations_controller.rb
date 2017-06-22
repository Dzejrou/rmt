class Api::Connect::V4::Systems::ActivationsController < Api::Connect::V4::BaseController

  before_action :authenticate_system

  def index
    respond_with(@system.activations, each_serializer: ::V3::ActivationSerializer)
  end

end
