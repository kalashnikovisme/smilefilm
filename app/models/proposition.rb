class Proposition < ActiveRecord::Base
  validates :text, presence: true
  validates :begin_date, presence: true
  validates :end_date, presence: true
  include PropositionRepository

  has_many :declares
end
