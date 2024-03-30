Rails.application.routes.draw do
  mount ExceptionLogger::Engine => "/exception_logger"
end
