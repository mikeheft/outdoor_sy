# typed: false
Rails.autoloaders.each do |autoloader|
  autoloader.inflector = Zeitwerk::Inflector.new
  autoloader.inflector.inflect(
    'rubocop' => 'RuboCop',
    # other special cases
  )
end