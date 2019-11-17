# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include ActsAsTemplate

  self.abstract_class = true
end
