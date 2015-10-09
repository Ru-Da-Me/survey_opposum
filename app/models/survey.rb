class Survey < ActiveRecord::Base
  has_many :questions
  has_many :submissions
  has_many :answers, through: :questions
  belongs_to :author
  validates :title, presence: true
  accepts_nested_attributes_for :questions,
      reject_if: proc { |attributes| attributes['text'].blank? }, 
      allow_destroy: true

  def publish
    #if the survey has at least one question set publish to true
    #else keep publish to false
  end



end
