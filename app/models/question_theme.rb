class QuestionTheme < ApplicationRecord
  has_many :questions
  validates :title, :presence => true, :allow_blank => false
end
