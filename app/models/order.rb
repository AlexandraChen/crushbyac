class Order < ActiveRecord::Base
  has_one :custom_bikini
  accepts_nested_attributes_for :custom_bikini, allow_destroy: true
end
