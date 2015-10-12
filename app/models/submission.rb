class Submission < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  has_many :questions, through: :answers
  validate :submit_require
  validates :survey_id, presence: true
  accepts_nested_attributes_for :answers

  def submit_require
    answers.any? { |a| a.answer_text.blank? && a.question.required }
    errors.add(:required, "Survey cannot be submitted without completing all required questions")
  end

end
