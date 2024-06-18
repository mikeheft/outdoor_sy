# typed: strict
# frozen_string_literal: true

module RuboCop
  class InitAutoloader
  end
end
# Load all Ruby files in the custom directory
Dir[File.join(__dir__, "**/*.rb")].each { |file| require file }
