class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  validates :question_type, presence: true
  validates :text, presence: true
end
