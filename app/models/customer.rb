class Customer < ActiveRecord::Base
  validates :borrower, :presence => true
end
