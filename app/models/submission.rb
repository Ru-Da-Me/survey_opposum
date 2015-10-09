class Submission < ActiveRecord::Base
  has_many :answers
  belongs_to :survey
  validate :submit_require

  def submit_require
    # answers.each do |a|
    #   if a.answer_test.blank? && a.required
    #     errors.add(:required, "Bla bla bla")
    #   end

    answers.any? { |a| a.answer_test.blank? && a.required}
  end




end
