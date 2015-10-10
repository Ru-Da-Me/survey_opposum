class Submission < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  has_many :questions, through: :answers
  # validate :submit_require
  validates :survey_id, presence: true

  # def submit_require
  #
  #   survey.questions.each do |q|
  #     if q.required
  #       if q.answers.count > 0
  #         q.answers.each do |a|
  #           if a.answer_text.blank?
  #             errors.add(:required, "blah blah")
  #           end
  #         end
  #       else
  #         errors.add(:required, "blah blah")
  #       end
  #     end
  #   end

  def submit_require
    survey.questions.each do |q|
      if q.required
        if q.answers.count > 0
          q.answers.each do |a|
            if a.answer_text.blank?
              errors.add(:required, "ERROR: triggered by blank answer text")
            end
          end
        # else
        #   errors.add(:required, "ERROR: triggered by question answers not being > 0")
        end
      end
    end
  end

    # survey.questions.each do |q|
    #   if q.required
    #     q.answers.each do |a|
    #       if a.answer_text.empty?
    #         errors.add(:required, "Survey cannot be submitted without responding to required questions.")
    #       end
    #     end
    #   end
    # end
    # if questions.any? { |q| q.required? } && (answers.any? { |a| a.answer_text.empty? || or  } || answers.count > 0)

  #   answers.each do |a|
  #     if a.answer_text.blank? && a.required
  #       errors.add(:required, "Survey cannot be submitted without responding to #{question.text}.")
  #     end
  #   end

  # validate :publish_with_require
  #
  # def publish_with_require
  #   answers.any? { |a| a.answer_text.blank? && a.required }
  #   errors.add(:required, "Survey cannot be submitted without completing all required questions")
  # end

end
