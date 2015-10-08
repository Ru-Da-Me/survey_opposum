class Question < ActiveRecord::Base
  belongs_to :survey
  validates :question_type, presence: true
  validates :text, presence: true

end
