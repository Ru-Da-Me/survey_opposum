class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :author
  validates :title, presence: true
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true



end
