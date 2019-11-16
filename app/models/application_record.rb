class ApplicationRecord < ActiveRecord::Base
  include ActsAsTemplate

  self.abstract_class = true
end
