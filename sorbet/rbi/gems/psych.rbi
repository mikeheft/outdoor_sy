# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/psych/all/psych.rbi
#
# psych-5.1.2

module Psych
  def self.add_builtin_type(type_tag, &block); end
  def self.add_domain_type(domain, type_tag, &block); end
  def self.add_tag(tag, klass); end
  def self.config; end
  def self.domain_types; end
  def self.domain_types=(value); end
  def self.dump(o, io = nil, options = nil); end
  def self.dump_stream(*objects); end
  def self.dump_tags; end
  def self.dump_tags=(value); end
  def self.load(yaml, permitted_classes: nil, permitted_symbols: nil, aliases: nil, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.load_file(path, *args, **); end
  def self.load_stream(yaml, filename: nil, fallback: nil, **kwargs); end
  def self.load_tags; end
  def self.load_tags=(value); end
  def self.parse(yaml, filename: nil); end
  def self.parse_file(filename, fallback: nil); end
  def self.parse_stream(yaml, filename: nil, &block); end
  def self.parser; end
  def self.remove_type(type_tag); end
  def self.safe_dump(o, io = nil, options = nil); end
  def self.safe_load(yaml, permitted_classes: nil, permitted_symbols: nil, aliases: nil, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.safe_load_file(filename, **kwargs); end
  def self.to_json(object); end
  def self.unsafe_load(yaml, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.unsafe_load_file(path, *args, **); end
end
class InvalidName___Class_0x00___Config_2
  def domain_types; end
  def domain_types=(arg0); end
  def dump_tags; end
  def dump_tags=(arg0); end
  def initialize; end
  def load_tags; end
  def load_tags=(arg0); end
end