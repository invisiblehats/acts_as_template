class ApplicationRecord < ActiveRecord::Base
  include ActAsTemplate

  self.abstract_class = true
end
