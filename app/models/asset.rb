class Asset < ActiveRecord::Base
  belongs_to :customer
  
  has_attached_file :asset
end
