# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionview/all/actionview.rbi
#
# actionview-7.1.3.4

module ActionView
end
class ActionView::TestCase < ActiveSupport::TestCase
  extend AbstractController::Helpers::ClassMethods
  extend ActionDispatch::Assertions::RoutingAssertions::ClassMethods
  extend ActionView::Helpers::SanitizeHelper::ClassMethods
  extend ActionView::Helpers::SanitizeHelper::ClassMethods
  extend ActionView::Helpers::UrlHelper::ClassMethods
  extend ActionView::TestCase::Behavior::ClassMethods
  extend ActiveSupport::Testing::ConstantLookup::ClassMethods
  include AbstractController::Helpers
  include ActionDispatch::Assertions
  include ActionDispatch::Assertions::RoutingAssertions
  include ActionView::Helpers
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::SanitizeHelper
  include ActionView::Helpers::SanitizeHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::TranslationHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::TestCase::Behavior
  include ActiveSupport::Testing::ConstantLookup
end
class ActionView::TestCase::TestController < ActionController::Base
  include ActionDispatch::Routing::UrlFor
  include ActionDispatch::TestProcess
  include Anonymous_Module_38
end
module ActionView::TestCase::TestController::HelperMethods
  include ActionController::Base::HelperMethods
  include ApplicationHelper
end
module ActionView::TestCase::Behavior
  extend ActiveSupport::Concern
  include AbstractController::Helpers
  include ActionController::TemplateAssertions
  include ActionDispatch::Assertions
  include ActionDispatch::Routing::PolymorphicRoutes
  include ActionView::Context
  include ActionView::Helpers
  include ActionView::RecordIdentifier
  include ActionView::RoutingUrlFor
  include ActiveSupport::Testing::ConstantLookup
  include Rails::Dom::Testing::Assertions
end
module ActionView::TestCase::Behavior::ClassMethods
end
class ActionView::TestCase::Behavior::RenderedViewContent < String
end
class ActionView::TestCase::Behavior::RenderedViewsCollection
end
module ActionView::TestCase::Behavior::Locals
end
module ActionView::TestCase::HelperMethods
end
