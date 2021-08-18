class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success #add new flash types for bootstraps messages in the controller
end
