require "acts_as_template/railtie"
require "acts_as_template/engine"

module ActsAsTemplate
  extend ActiveSupport::Concern

  included do
    def set_foo_bar_field(string)
      write_attribute(self.class.foo_bar_field, string)
    end
  end

  class_methods do
    def acts_as_template(options = {})
      cattr_accessor :foo_bar_field,
                     default: options.fetch(:foo_bar_field, '')
    end
  end
end
