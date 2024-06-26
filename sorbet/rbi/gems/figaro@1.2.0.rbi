# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `figaro` gem.
# Please instead update this file by running `bin/tapioca gem figaro`.


# source://figaro//lib/figaro/error.rb#1
module Figaro
  extend ::Figaro

  # source://figaro//lib/figaro.rb#14
  def adapter; end

  # Sets the attribute adapter
  #
  # @param value the value to set the attribute adapter to.
  #
  # source://figaro//lib/figaro.rb#8
  def adapter=(_arg0); end

  # source://figaro//lib/figaro.rb#18
  def application; end

  # Sets the attribute application
  #
  # @param value the value to set the attribute application to.
  #
  # source://figaro//lib/figaro.rb#8
  def application=(_arg0); end

  # source://figaro//lib/figaro.rb#10
  def env; end

  # source://figaro//lib/figaro.rb#22
  def load; end

  # @raise [MissingKeys]
  #
  # source://figaro//lib/figaro.rb#26
  def require_keys(*keys); end
end

# source://figaro//lib/figaro/application.rb#5
class Figaro::Application
  include ::Enumerable

  # @return [Application] a new instance of Application
  #
  # source://figaro//lib/figaro/application.rb#10
  def initialize(options = T.unsafe(nil)); end

  # source://figaro//lib/figaro/application.rb#31
  def configuration; end

  # source://figaro//lib/figaro/application.rb#41
  def each(&block); end

  # source://figaro//lib/figaro/application.rb#22
  def environment; end

  # source://figaro//lib/figaro/application.rb#27
  def environment=(environment); end

  # source://figaro//lib/figaro/application.rb#35
  def load; end

  # source://figaro//lib/figaro/application.rb#14
  def path; end

  # source://figaro//lib/figaro/application.rb#18
  def path=(path); end

  private

  # source://figaro//lib/figaro/application.rb#51
  def default_environment; end

  # @raise [NotImplementedError]
  #
  # source://figaro//lib/figaro/application.rb#47
  def default_path; end

  # source://figaro//lib/figaro/application.rb#67
  def environment_configuration; end

  # source://figaro//lib/figaro/application.rb#63
  def global_configuration; end

  # source://figaro//lib/figaro/application.rb#87
  def key_skipped!(key); end

  # source://figaro//lib/figaro/application.rb#83
  def non_string_configuration!(value); end

  # source://figaro//lib/figaro/application.rb#59
  def parse(path); end

  # source://figaro//lib/figaro/application.rb#55
  def raw_configuration; end

  # source://figaro//lib/figaro/application.rb#71
  def set(key, value); end

  # @return [Boolean]
  #
  # source://figaro//lib/figaro/application.rb#79
  def skip?(key); end
end

# source://figaro//lib/figaro/application.rb#6
Figaro::Application::FIGARO_ENV_PREFIX = T.let(T.unsafe(nil), String)

# source://figaro//lib/figaro/env.rb#2
module Figaro::ENV
  extend ::Figaro::ENV

  # @return [Boolean]
  #
  # source://figaro//lib/figaro/env.rb#5
  def respond_to?(method, *_arg1); end

  private

  # source://figaro//lib/figaro/env.rb#28
  def extract_key_from_method(method); end

  # source://figaro//lib/figaro/env.rb#40
  def get_value(key); end

  # @return [Boolean]
  #
  # source://figaro//lib/figaro/env.rb#32
  def has_key?(key); end

  # source://figaro//lib/figaro/env.rb#17
  def method_missing(method, *_arg1); end

  # @raise [MissingKey]
  #
  # source://figaro//lib/figaro/env.rb#36
  def missing_key!(key); end
end

# source://figaro//lib/figaro/error.rb#2
class Figaro::Error < ::StandardError; end

# source://figaro//lib/figaro/error.rb#6
class Figaro::MissingKey < ::Figaro::Error
  # @return [MissingKey] a new instance of MissingKey
  #
  # source://figaro//lib/figaro/error.rb#7
  def initialize(key); end
end

# source://figaro//lib/figaro/error.rb#12
class Figaro::MissingKeys < ::Figaro::Error
  # @return [MissingKeys] a new instance of MissingKeys
  #
  # source://figaro//lib/figaro/error.rb#13
  def initialize(keys); end
end

# source://figaro//lib/figaro/rails/application.rb#2
module Figaro::Rails; end

# source://figaro//lib/figaro/rails/application.rb#3
class Figaro::Rails::Application < ::Figaro::Application
  private

  # source://figaro//lib/figaro/rails/application.rb#12
  def default_environment; end

  # source://figaro//lib/figaro/rails/application.rb#6
  def default_path; end

  # @raise [RailsNotInitialized]
  #
  # source://figaro//lib/figaro/rails/application.rb#16
  def rails_not_initialized!; end
end

# source://figaro//lib/figaro/rails/railtie.rb#3
class Figaro::Rails::Railtie < ::Rails::Railtie; end

# source://figaro//lib/figaro/error.rb#4
class Figaro::RailsNotInitialized < ::Figaro::Error; end
