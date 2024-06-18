Rails.application.autoloaders.each do |autoloader|
  autoloader.inflector.inflect("rubocop" => "RuboCop")
end