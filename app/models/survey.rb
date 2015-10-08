class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :author
  validates :title, presence: true



end
