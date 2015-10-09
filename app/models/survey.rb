class Survey < ActiveRecord::Base
  has_many :questions
  has_many :submissions
  has_many :answers, through: :questions
  belongs_to :author
  validates :title, presence: true
  validate :publish_with_question
  accepts_nested_attributes_for :questions,
      reject_if: proc { |attributes| attributes['text'].blank? },
      allow_destroy: true


      def publish_with_question
       if published == true && questions.count == 0
         errors.add(:published, "Survey cannot be published without at least one question")
       end
     end

end
