class Submission < ActiveRecord::Base
  has_many :answers
  belongs_to :survey
  # validate :publish_with_require
  #
  # def publish_with_require
  #   answers.any? { |a| a.answer_text.blank? && a.required }
  #   errors.add(:required, "Survey cannot be submitted without completing all required questions")
  # end

end
