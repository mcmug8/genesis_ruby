class Customer < ActiveRecord::Base
  validates :borrower, :presence => true
  has_one :loi
  has_one :appraisal
  has_one :environmental
  has_one :loandetail
  has_many :subborrowers
  accepts_nested_attributes_for :loi, :appraisal, :environmental, :loandetail, :subborrowers
end
