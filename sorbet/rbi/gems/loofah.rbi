# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/loofah/all/loofah.rbi
#
# loofah-2.22.0

module Loofah
  def self.document(*args, &block); end
  def self.fragment(*args, &block); end
  def self.html4_document(*args, &block); end
  def self.html4_fragment(*args, &block); end
  def self.html5_document(*args, &block); end
  def self.html5_fragment(*args, &block); end
  def self.html5_support?; end
  def self.remove_extraneous_whitespace(string); end
  def self.scrub_document(string_or_io, method); end
  def self.scrub_fragment(string_or_io, method); end
  def self.scrub_html4_document(string_or_io, method); end
  def self.scrub_html4_fragment(string_or_io, method); end
  def self.scrub_html5_document(string_or_io, method); end
  def self.scrub_html5_fragment(string_or_io, method); end
  def self.scrub_xml_document(string_or_io, method); end
  def self.scrub_xml_fragment(string_or_io, method); end
  def self.xml_document(*args, &block); end
  def self.xml_fragment(*args, &block); end
end
module Loofah::MetaHelpers
  def self.add_downcased_set_members_to_all_set_constants(mojule); end
end
module Loofah::Elements
end
module Loofah::HTML5
end
module Loofah::HTML5::SafeList
end
module Loofah::LibxmlWorkarounds
end
module Loofah::HTML5::Scrub
  def self.allowed_element?(element_name); end
  def self.cdata_escape(node); end
  def self.cdata_needs_escaping?(node); end
  def self.escape_tags(string); end
  def self.force_correct_attribute_escaping!(node); end
  def self.scrub_attribute_that_allows_local_ref(attr_node); end
  def self.scrub_attributes(node); end
  def self.scrub_css(style); end
  def self.scrub_css_attribute(node); end
  def self.scrub_uri_attribute(attr_node); end
end
class Loofah::ScrubberNotFound < RuntimeError
end
class Loofah::Scrubber
  def append_attribute(node, attribute, value); end
  def block; end
  def direction; end
  def html5lib_sanitize(node); end
  def initialize(options = nil, &block); end
  def scrub(node); end
  def traverse(node); end
  def traverse_conditionally_bottom_up(node); end
  def traverse_conditionally_top_down(node); end
end
module Loofah::Scrubbers
  def self.scrubber_symbols; end
end
class Loofah::Scrubbers::Strip < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Prune < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Escape < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Whitewash < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NoFollow < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::TargetBlank < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NoOpener < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NoReferrer < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::NewlineBlockElements < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Loofah::Scrubbers::Unprintable < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
module Loofah::ScrubBehavior
  def self.resolve_scrubber(scrubber); end
end
module Loofah::ScrubBehavior::Node
  def scrub!(scrubber); end
end
module Loofah::ScrubBehavior::NodeSet
  def scrub!(scrubber); end
end
module Loofah::TextBehavior
  def inner_text(options = nil); end
  def text(options = nil); end
  def to_str(options = nil); end
  def to_text(options = nil); end
end
module Loofah::DocumentDecorator
  def initialize(*args, &block); end
end
module Loofah::HtmlDocumentBehavior
  def self.included(base); end
  def serialize_root; end
end
module Loofah::HtmlDocumentBehavior::ClassMethods
  def parse(*args, &block); end
  def remove_comments_before_html_element(doc); end
end
module Loofah::HtmlFragmentBehavior
  def self.included(base); end
  def serialize; end
  def serialize_root; end
  def to_s; end
end
module Loofah::HtmlFragmentBehavior::ClassMethods
  def document_klass; end
  def parse(tags, encoding = nil); end
end
module Loofah::XML
end
class Loofah::XML::Document < Nokogiri::XML::Document
  include Loofah::DocumentDecorator
  include Loofah::ScrubBehavior::Node
end
class Loofah::XML::DocumentFragment < Nokogiri::XML::DocumentFragment
  def self.parse(tags); end
end
module Loofah::HTML4
end
class Loofah::HTML4::Document < Nokogiri::HTML4::Document
  extend Loofah::HtmlDocumentBehavior::ClassMethods
  include Loofah::DocumentDecorator
  include Loofah::HtmlDocumentBehavior
  include Loofah::ScrubBehavior::Node
  include Loofah::TextBehavior
end
class Loofah::HTML4::DocumentFragment < Nokogiri::HTML4::DocumentFragment
  extend Loofah::HtmlFragmentBehavior::ClassMethods
  include Loofah::HtmlFragmentBehavior
  include Loofah::TextBehavior
end
class Loofah::HTML5::Document < Nokogiri::HTML5::Document
  extend Loofah::HtmlDocumentBehavior::ClassMethods
  include Loofah::DocumentDecorator
  include Loofah::HtmlDocumentBehavior
  include Loofah::ScrubBehavior::Node
  include Loofah::TextBehavior
end
class Loofah::HTML5::DocumentFragment < Nokogiri::HTML5::DocumentFragment
  extend Loofah::HtmlFragmentBehavior::ClassMethods
  include Loofah::HtmlFragmentBehavior
  include Loofah::TextBehavior
end
