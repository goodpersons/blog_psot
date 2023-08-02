# This file is used by Rack-based servers to start the application.
# rack 是一个轻量级的 http 处理器 
require_relative "config/environment"

run Rails.application
Rails.application.load_server
