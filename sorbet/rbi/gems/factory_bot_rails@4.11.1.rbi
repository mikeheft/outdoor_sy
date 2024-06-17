# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `factory_bot_rails` gem.
# Please instead update this file by running `bin/tapioca gem factory_bot_rails`.


# source://factory_bot_rails//lib/factory_bot_rails/railtie.rb#5
module FactoryBot
  extend ::FactoryBot::Syntax::Methods

  class << self
    # source://factory_bot/4.11.1/lib/factory_bot/aliases.rb#3
    def aliases; end

    # source://factory_bot/4.11.1/lib/factory_bot/aliases.rb#3
    def aliases=(_arg0); end

    # source://factory_bot/4.11.1/lib/factory_bot/aliases.rb#11
    def aliases_for(attribute); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def allow_class_lookup(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def allow_class_lookup=(arg); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def callback_names(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def callbacks(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#50
    def configuration; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def constructor(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot/find_definitions.rb#7
    def definition_file_paths; end

    # source://factory_bot/4.11.1/lib/factory_bot/find_definitions.rb#7
    def definition_file_paths=(_arg0); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def duplicate_attribute_assignment_from_initialize_with(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def duplicate_attribute_assignment_from_initialize_with=(arg); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def factories(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#99
    def factory_by_name(name); end

    # source://factory_bot/4.11.1/lib/factory_bot/find_definitions.rb#12
    def find_definitions; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def initialize_with(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#64
    def lint(*args); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#153
    def register_callback(name); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#146
    def register_default_callbacks; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#138
    def register_default_strategies; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#92
    def register_factory(factory); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#103
    def register_sequence(sequence); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#129
    def register_strategy(strategy_name, strategy_class); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#118
    def register_trait(trait); end

    # source://factory_bot/4.11.1/lib/factory_bot/reload.rb#2
    def reload; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#54
    def reset_configuration; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#114
    def rewind_sequences; end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#110
    def sequence_by_name(name); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def sequences(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def skip_create(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def strategies(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#134
    def strategy_by_name(name); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def to_create(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#125
    def trait_by_name(name); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def traits(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def use_parent_strategy(*_arg0, **_arg1, &_arg2); end

    # source://factory_bot/4.11.1/lib/factory_bot.rb#73
    def use_parent_strategy=(arg); end
  end
end

# source://factory_bot_rails//lib/factory_bot_rails/railtie.rb#6
class FactoryBot::Railtie < ::Rails::Railtie; end

# source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#1
module FactoryBotRails; end

# source://factory_bot_rails//lib/factory_bot_rails/generator.rb#6
class FactoryBotRails::Generator
  # @return [Generator] a new instance of Generator
  #
  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#7
  def initialize(config); end

  # @return [Boolean]
  #
  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#35
  def factory_bot_disabled?; end

  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#19
  def generator; end

  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#39
  def rails_options; end

  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#15
  def run; end

  # source://factory_bot_rails//lib/factory_bot_rails/generator.rb#31
  def test_framework; end
end

# source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#2
module FactoryBotRails::Generators; end

# source://factory_bot_rails//lib/factory_bot_rails/generators/non_rspec_generator.rb#3
class FactoryBotRails::Generators::NonRSpecGenerator
  # @return [NonRSpecGenerator] a new instance of NonRSpecGenerator
  #
  # source://factory_bot_rails//lib/factory_bot_rails/generators/non_rspec_generator.rb#4
  def initialize(generators); end

  # source://factory_bot_rails//lib/factory_bot_rails/generators/non_rspec_generator.rb#8
  def run; end

  private

  # source://factory_bot_rails//lib/factory_bot_rails/generators/non_rspec_generator.rb#14
  def test_framework; end
end

# source://factory_bot_rails//lib/factory_bot_rails/generators/null_generator.rb#3
class FactoryBotRails::Generators::NullGenerator
  # @return [NullGenerator] a new instance of NullGenerator
  #
  # source://factory_bot_rails//lib/factory_bot_rails/generators/null_generator.rb#4
  def initialize(generators); end

  # source://factory_bot_rails//lib/factory_bot_rails/generators/null_generator.rb#7
  def run; end
end

# source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#3
class FactoryBotRails::Generators::RSpecGenerator
  # @return [RSpecGenerator] a new instance of RSpecGenerator
  #
  # source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#4
  def initialize(generators); end

  # source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#8
  def run; end

  private

  # source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#18
  def factory_bot_directory; end

  # source://factory_bot_rails//lib/factory_bot_rails/generators/rspec_generator.rb#14
  def fixture_replacement_setting; end
end
