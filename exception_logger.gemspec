require_relative "lib/exception_logger/version"

Gem::Specification.new do |spec|
  spec.name        = "exception_logger"
  spec.version     = ExceptionLogger::VERSION
  spec.authors     = ["Tamiru Hailu"]
  spec.email       = ["tamiruhailu@gmail.com"]
  spec.homepage    = "https://github.com/tamiru/exception_logger" # replace with your actual homepage
  spec.summary     = "A simple exception logger for Ruby applications." # replace with your actual summary
  spec.description = "This gem provides a simple and easy-to-use exception logger for Ruby applications." # replace with your actual description
  spec.license     = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com" # replace with your actual gem server
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tamiru/exception_logger" # replace with your actual source code URL
  spec.metadata["changelog_uri"] = "https://github.com/tamiru/exception_logger/CHANGELOG.md" # replace with your actual changelog URL

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
  spec.add_dependency "will_paginate", ">= 4.0"
end
